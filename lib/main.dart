import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx/view/home.dart';
import 'package:getx/view/page1.dart';
import 'package:getx/view/page2.dart';
import 'package:getx/view/page3.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      title: 'Flutter Demo',
      home: Home(),
      getPages: [
      GetPage(name: "/page1", page: () => Page1(),),
      GetPage(name: "/page2", page: () => Page2(),),
      GetPage(name: "/page3", page: () => Page3(),),
      ],
    );
  }
}