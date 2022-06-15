import 'package:flutter/material.dart';
import 'package:test_app/MyContainer.dart';
import 'package:test_app/Sayfa.dart';
import 'package:test_app/SayfaGecis.dart';
import 'package:test_app/fotoislem.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

typedef bool IsInViewPortCondition(
  double deltaTop,
  double deltaBottom,
  double viewPortDimension,
);
typedef IndexedWidgetBuilder = Widget Function(BuildContext context, int index);

class FavoritePage extends StatelessWidget {
  @override
Widget build(BuildContext context) {
  return Scaffold(
    bottomNavigationBar: SayfaGecis(),
    body: AnimationLimiter(
      child: ListView.builder(
        itemCount: 30,
        itemBuilder: (BuildContext context, int index) {
          return AnimationConfiguration.staggeredList(
            position: index,
            duration: const Duration(milliseconds: 375),
            child: SlideAnimation(
              verticalOffset: 50.0,
              child: FadeInAnimation(
                child: MyContainer(yuksek: 300),
              ),
            ),
          );
        },
      ),
    ),
  );
}
}