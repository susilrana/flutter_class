import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:flutter_application_one/components/custom_button.dart';
import 'package:flutter_application_one/screens/next_page.dart';

import '../models/students.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen({super.key});
  TextEditingController passwordController = TextEditingController();
  final Count c = Get.put(Count());
  bool istap = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: const Color.fromARGB(255, 66, 169, 76),
        leading: const BackButton(
          color: Colors.white,
        ),
        actions: [
          Obx(() => Text(
                c.count.toString(),
                style: const TextStyle(fontSize: 15, color: Colors.white),
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart,
              )),
        ],
        elevation: 2,
      ),
      body: SingleChildScrollView(
        child: Column(
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomButton(
                  title: 'Next Page',
                  onTap: () {
                    Get.to(NextPage());
                  }),
            ),
            const Text(
              'Products',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
            Wrap(
              children: [
                for (int i = 0; i < 10; i++)
                  SizedBox(
                    height: 200,
                    width: Get.width / 2,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            color: Colors.black,
                            border: Border.all(
                              color: Colors.grey,
                              width: 2,
                            ),

                            //box shadow has been given.
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.6),
                                spreadRadius: 3,
                                blurRadius: 12,
                                offset: const Offset(
                                    2, 5), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.network(
                                  "https://c.ndtvimg.com/2023-07/l5et0f5g_barbie-vs-oppenheimer_625x300_20_July_23.jpg?im=Resize=(1230,900)"),
                              const Text("Barbenheimer",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.amber)),
                              const Text("Barbie x Oppenheimer ",
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.white)),
                              CustomButton(
                                  title: 'Add To Cart',
                                  onTap: () {
                                    if (istap == false) {
                                      c.increment();
                                      istap = true;
                                    }
                                  }),
                            ],
                          )),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }


}
