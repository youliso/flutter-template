import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/router.dart';
import 'components/webview.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      enableLog: true,
      debugShowCheckedModeBanner: true,
      home: const HomePage(),
      getPages: Get.find<PageRouter<String>>().pages,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PageRouter<String>>(
        init: Get.find<PageRouter<String>>(),
        builder: (controller) {
          return Scaffold(
              appBar: AppBar(
                title: const Text("Ting Mobile",
                    style: TextStyle(color: Colors.black)),
                backgroundColor: Colors.white,
              ),
              body: Center(
                child: Column(
                  children: <Widget>[
                    IconButton(
                        icon: const Icon(Icons.abc_sharp),
                        onPressed: () {
                          controller.go('/about');
                        }),
                    IconButton(
                        icon: const Icon(Icons.web_asset),
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) {
                            return const Browser(
                              url: "https://flutter-io.cn/",
                              title: "Flutter 中文社区",
                            );
                          }));
                        })
                  ],
                ),
              ));
        });
  }
}
