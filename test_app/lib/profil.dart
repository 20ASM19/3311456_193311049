import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'SayfaGecis.dart';
import 'fotoislem.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SayfaGecis(),
      appBar: AppBar(
        title: Text(
          'Profil',
          style: TextStyle(color: Colors.black54),
        ),
        centerTitle: true,
      ),
      body: FotoISlemHome(),
    );
  }
}