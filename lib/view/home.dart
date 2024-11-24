import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/homecontroller.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GetX<HomeController>(
          init: HomeController(),
          builder: (controller)=> Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: MaterialButton(
                child: Text("+"),
                onPressed: () {
                  controller.increment();
              },),
            ),
                        Center(
              child: Text("${controller.counter.value}"),
            ),
                        Center(
              child: MaterialButton(
                child: Text("__"),
                onPressed: () {
               controller.decrement();
              },),
            ),
          ],
        ),)
      );
  }
}