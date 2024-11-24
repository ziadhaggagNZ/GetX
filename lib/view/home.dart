import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: MaterialButton(
                child: Text("page 1"),
                onPressed: () {
                Get.toNamed("/page1");
              },),
            ),
                        Center(
              child: MaterialButton(
                child: Text("page 2"),
                onPressed: () {
               Get.toNamed("/page2");
              },),
            ),
                        Center(
              child: MaterialButton(
                child: Text("page 3"),
                onPressed: () {
                Get.toNamed("/page3");
              },),
            ),
          ],
        ),
      );
  }
}