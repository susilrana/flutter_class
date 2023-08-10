import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_one/controllers/product_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ProductController _productController = Get.put(ProductController());
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 194, 243, 252),
        title: const Text(
          'Home Page',
          style: TextStyle(
            color: Color.fromARGB(255, 54, 88, 93),
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Wrap(
              children: _productController.products
                  .map((element) => Container(
                        width: Get.width / 2,
                        height: 200,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Expanded(
                                  child:
                                      Image.network(element.image.toString())),
                              Text(element.name.toString()),
                            ],
                          ),
                        ),
                      ))
                  .toList())),
    );
  }
}
