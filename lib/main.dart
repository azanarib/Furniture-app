import 'package:flutter/material.dart';
import 'package:furniture_app/resources/colors/app_colors.dart';
import 'package:furniture_app/resources/routes/routes_models.dart';
import 'package:furniture_app/resources/routes/routes_names.dart';
import 'package:get/get.dart';

void main() {
  runApp(const FurnitureApp());
}

class FurnitureApp extends StatelessWidget {
  const FurnitureApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Furniture App",
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          bodyLarge: TextStyle(
            fontFamily: "Gelasio",
            fontWeight: FontWeight.w600,
            height: 100 / 100,
            letterSpacing: 5 / 100,
            fontSize: 24,
            color: AppColors.lightBlack,
          ),
          titleLarge: TextStyle(
            fontSize: 30,
            height: 100 / 100,
            fontWeight: FontWeight.w700,
            color: AppColors.darkBlack,
            fontFamily: "Gelasio",
          ),
          bodySmall: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            fontFamily: "Nunito Sans",
            letterSpacing: 0,
            color: AppColors.grey,
          ),
        ),
      ),
      initialRoute: RoutesNames.boardingPage,
      getPages: RoutesModels.appRoutes(),
    );
  }
}
