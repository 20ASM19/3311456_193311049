import 'package:flutter/material.dart';

import 'MyContainer.dart';
import 'Sayfa.dart';
import 'SayfaGecis.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SayfaGecis(),
      appBar: AppBar(
        title: Text(
          'Ana Sayfa',
          style: TextStyle(color: Colors.black54),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 6,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: MyContainer(
                          child: Sayfa(
                            seyfe: "gidilmek istenen bölge ve kalan zaman",
                          ),
                        ),
                      ),
                      Expanded(
                        child: MyContainer(
                          child: Sayfa(
                            seyfe:
                                "diğer kullanıcılardan bulunan bölge için tavsiyeler",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    child: Sayfa(
                      seyfe: "yapılacaklar listesi ve başarımlar",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 6,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: MyContainer(
                          child: Sayfa(
                            seyfe: "bulunduğunuz bölge",
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: MyContainer(
                          child: Sayfa(
                            seyfe: "bölgedeki popüler mesaj grupları",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    child: Sayfa(
                      seyfe: "bu zamana kadarki kat edilen yol",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
