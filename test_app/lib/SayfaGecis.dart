import 'package:flutter/material.dart';
import 'package:test_app/profil.dart';

import 'Home_page.dart';
import 'Message_page.dart';
import 'favorite_page.dart';

class SayfaGecis extends StatelessWidget {
  const SayfaGecis({
     Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FlatButton(
          color: Colors.white,
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => FavoritePage()));
          },
          child: Text("Favoriler"),
        ),
        FlatButton(
          color: Colors.white,
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
          child: Text("Anasayfa"),
        ),
        FlatButton(
          color: Colors.white,
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => MessagePage()));
          },
          child: Text("Mesajlar")
        ),
        FlatButton(
          color: Colors.white,
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => Profile()));
          },
          child: Text("profil")
        ),
      ],
    );
  }
}
