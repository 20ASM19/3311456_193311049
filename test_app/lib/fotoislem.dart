import 'dart:ffi';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/cupertino.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';


class FotoIslem extends StatelessWidget {
  const FotoIslem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FotoISlemHome();
  }
}


class FotoISlemHome extends StatefulWidget {
  const FotoISlemHome({Key? key}) : super(key: key);

  @override
  State<FotoISlemHome> createState() => _FotoISlemHomeState();
}

class _FotoISlemHomeState extends State<FotoISlemHome> {
  File? _secilenDosya;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      body: ListView(children: [Center(heightFactor: 2,

        child: CircleAvatar(child: _secilenDosya == null ? Text("foto") : null,
        radius: 80,
        backgroundImage: _secilenDosya != null ? FileImage(_secilenDosya!):null,
        ),
      ),

      const SizedBox(height: 20.0,),

      RaisedButton(child: Text("foto yükle"),
      onPressed: (){
          _secimFotoGoster(context);

      },),
      ],
      ),
    );
  }
  
  void _secimFotoGoster(BuildContext context) {
    showDialog(context: context,
      builder: (context) => AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
             ListTile( 
               title: Text("galeriden foto çek"),
               onTap: (){
                  _secimYukle(ImageSource.gallery);
               },
              ),
             ListTile( 
               title: Text("kameradan foto çek"),
               onTap: (){
                 _secimYukle(ImageSource.camera);
               },
              ),
          ],
        ),
      ),
    );
  }


  void _secimYukle(ImageSource source) async{
    final picker = ImagePicker();
    final secilen = await picker.getImage(source: source);

   setState(() {
     if(secilen != null){
       //_secilenDosya = File (secilen.path);
       _fotoKes(File(secilen.path),);
     }
   });
   Navigator.pop(context);
  }


  void _fotoKes(File photo) async{
    CroppedFile? kesilenFoto = await ImageCropper.platform.cropImage(
      sourcePath: photo.path,
      aspectRatio: CropAspectRatio(ratioX: 1.0, ratioY: 1.0),
      maxWidth: 800,
    );

    
    if(kesilenFoto != null){
      setState(() {
        _secilenDosya = kesilenFoto as File?;
      });
    }
  }
} 