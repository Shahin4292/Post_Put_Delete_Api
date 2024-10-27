import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
   HomeView({super.key});

  HomeController homeController = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemBuilder: (context, index){
        return Center(child: Image.network(""),);
      })
    );
  }
}
