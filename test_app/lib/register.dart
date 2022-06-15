import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController  = TextEditingController();
    TextEditingController passwordController  = TextEditingController();

    Future<void> register(String email, String password) async {
      FirebaseAuth authendication = FirebaseAuth.instance;
      await authendication.createUserWithEmailAndPassword(email: email, password: password);
    }
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(children: [
          TextField(controller: emailController,decoration: InputDecoration(hintText: "Email Giriniz"),),
          TextField(controller: passwordController,decoration: InputDecoration(hintText: "Password Giriniz"),),
          ElevatedButton(onPressed: (){
            register(emailController.text, passwordController.text).then((value) => print("Kullanıcı Oluşturuldu.")).catchError((err) {
              print(err);
            });
          }, child: Text("Kayıt Ol"),),
        ],),
      ),
    );
  }
}