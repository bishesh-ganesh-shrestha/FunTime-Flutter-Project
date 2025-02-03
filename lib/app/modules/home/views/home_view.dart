// import 'package:counter/app/data/repository/riddleRepo.dart';
import 'package:counter/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';




class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        // centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Wrap(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            spacing: 10,
            runSpacing: 10,
            alignment: WrapAlignment.center,
            runAlignment: WrapAlignment.center,
            children: [
              
              InkWell(
                onTap: () {
                  Get.toNamed(
                    Routes.DETAIL
                  );
                },
                child: Container(
                  height: 200,
                  width: 200,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.red[400],
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    "Jokes",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25
                    ),
                  ),
                ),
              ),
          
              InkWell(
                onTap: () {
                  Get.toNamed(
                    Routes.QUOTES
                  );
                },
                child: Container(
                  height: 200,
                  width: 200,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.red[400],
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child:  Text(
                    "Quotes",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25
                    ),
                  ),
                ),
              ),
          
              InkWell(
                onTap: () {
                  Get.toNamed(
                    Routes.QUESTION
                  );
                },
                child: Container(
                  height: 200,
                  width: 200,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.red[400],
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child:  Text(
                    "Riddels",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25
                    ),
                  ),
                ),
              ),
          
              InkWell(
                onTap: () {
                  Get.toNamed(
                    Routes.DETAIL
                  );
                },
                child: Container(
                  height: 200,
                  width: 200,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.red[400],
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child:  Text(
                    "Random facts",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25
                    ),
                  ),
                ),
              ),
          
            ],
          
          ),
          ),
        ),
    );
  }
}
