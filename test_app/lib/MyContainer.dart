import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final Color? renk;
  final Widget? child;
  final Function()? bas;
  final double? yuksek;

  MyContainer({this.renk = Colors.white,  this.child,  this.bas,  this.yuksek});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: bas,
      child: Container(
        padding: EdgeInsets.all(10.0),
        width: MediaQuery.of(context).size.width,
        height: yuksek,
        child: child,
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
        ),
      ),
    );
  }
}
