import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:test_app/Home_page.dart';
import 'package:test_app/register.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController  = TextEditingController();
    TextEditingController passwordController  = TextEditingController();
    
    Future<UserCredential> login(String email, String password) async {
      FirebaseAuth authendication = FirebaseAuth.instance;
      return await authendication.signInWithEmailAndPassword(email: email, password: password);
    }
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(children: [
          TextField(controller: emailController,decoration: InputDecoration(hintText: "Email Giriniz"),),
          TextField(controller: passwordController,decoration: InputDecoration(hintText: "Password Giriniz"),),
          ElevatedButton(onPressed: (){
            login(emailController.text, passwordController.text).then((value) {
              print(value.user?.email);
              //Login Oldum.
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomePage()));
            } )
            .catchError((err) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Email yada şifre hatalı!")));
            });
          }, child: Text("Giriş Yap"),),
          ElevatedButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => RegisterPage()));
          }, child: Text("Kayıt Ol"))
        ],),
      ),
    );
  }
}