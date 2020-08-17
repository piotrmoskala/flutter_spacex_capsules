import 'package:flutter/material.dart';
import 'package:spacex_capsules/injector.dart';

import 'feature/capsule_list/widget/capsule_list_page.dart';

void main() async {
  await Injector.init();
  Injector.getIt.allReady().then((value) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Capsules",
      theme: ThemeData(
        primaryColor: Colors.indigo,
        accentColor: Colors.indigoAccent,
      ),
      home: CapsuleListPage(),
    );
  }
}

