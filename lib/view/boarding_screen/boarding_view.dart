import 'package:flutter/material.dart';
import 'package:furniture_app/resources/assets_images/asset_images_address.dart';
import 'package:furniture_app/resources/components/button.dart';
import 'package:furniture_app/resources/routes/routes_names.dart';
import 'package:get/get.dart';

class BoardingView extends StatelessWidget {
  const BoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Expanded(
          child: Container(
            padding: EdgeInsets.only(left: 40),
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  AssetImageAddress.boardingImage,
                ),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 20,
              children: [
                SizedBox(
                  height: 190,
                ),
                Text(
                  "MAKE YOUR",
                  style: TextTheme.of(context).bodyLarge,
                ),
                Text(
                  "HOME BEAUTIFUL",
                  style: TextTheme.of(context).titleLarge,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 20, top: 20),
                  child: Text(
                    "The best simple place where you discover most wonderful furnitures and make your home beautiful",
                    style: TextTheme.of(context).bodySmall,
                    maxLines: 3,
                    textAlign: TextAlign.justify,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 160,left: 80),
                  child: Button(
                    text: 'GET STARTED',
                    onPressed: (){
                      Get.toNamed(RoutesNames.loginPage);
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
