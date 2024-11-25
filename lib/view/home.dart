import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/homeController.dart';


class Home extends StatelessWidget {
   Home({super.key});

 // HomeController controller = Get.put(HomeController() , permanent: true);
HomeController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: MaterialButton(
                child: Text("+"),
                onPressed: () {
                  controller.increment();
                  Get.snackbar("increment", "number increment");
              },),
            ),
                        Center(
              child: GetBuilder<HomeController>(
          builder: (controller)=> Text("${controller.counter}"),
              )
              
            ),
                        Center(
              child: MaterialButton(
                child: Text("__"),
                onPressed: () {
               controller.decrement();
                Get.snackbar("decrement", "number decrement");

              },),
            ),
          ],
        ));
      
  }
}