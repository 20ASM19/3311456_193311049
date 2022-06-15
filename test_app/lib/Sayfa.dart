import 'package:flutter/material.dart';

class Sayfa extends StatelessWidget {
  String seyfe;

  Sayfa({required this.seyfe});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          seyfe,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
