import 'package:counter/app/modules/home/views/home_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Blue Theme',
      theme: ThemeData(
        // Use blue as the primary color
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        
        // Customize other theme properties if needed
        appBarTheme: AppBarTheme(
          color: Colors.blue[700],  // Custom color for AppBar
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blue, // Button colors
        ),
       
        // You can customize more elements as needed
      ),
      home: HomeView(),
    );
  }
}