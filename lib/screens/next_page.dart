import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:flutter_application_one/components/custom_button.dart';

import '../models/students.dart';

class NextPage extends StatelessWidget {
  NextPage({super.key});
  TextEditingController passwordController = TextEditingController();
  final Count c = Get.find<Count>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Next Page'),
        backgroundColor: const Color.fromARGB(255, 216, 83, 196),
        leading: const BackButton(
          color: Colors.white,
        ),
        elevation: 2,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CustomButton(
                title: 'Increment',
                onTap: () {
                  c.increment();
                }),
          ),
          Obx(() => Text(
                c.count.toString(),
                style: const TextStyle(fontSize: 30, color: Colors.white),
              )),
          CustomButton(
              title: 'Decrement',
              onTap: () {
                c.decrement();
              }),
          CustomButton(
              title: 'Back',
              onTap: () {
                Get.back();
              })
        ],
      ),
    );
  }
}
