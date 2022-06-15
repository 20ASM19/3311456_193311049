import 'package:flutter/material.dart';
import 'package:test_app/MyContainer.dart';

import 'Sayfa.dart';
import 'SayfaGecis.dart';

class MessagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: SayfaGecis(),
        appBar: AppBar(title: Text("Mesajlar")),
        body: Column(
          children: [
            Expanded(
              flex: 8,
              child: Column(
                children: [
                  Expanded(
                    child: MyContainer(
                      
                      child: Sayfa(
                        seyfe: "Mesajlaşma grupları ve özel mesajlar",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Expanded(
                    child: MyContainer(
                      child: Sayfa(
                        seyfe:
                            "aynı bölgede bulunan rehperdeki ve arkadaş eklenmiş kişiler(tanıyor olabileceğin kişiler)",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
