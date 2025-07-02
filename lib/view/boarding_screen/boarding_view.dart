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
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(left: 40),
                height: Get.height,
                width: Get.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      AssetImageAddress.boardingImage,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 40.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 230,
                    ),
                    Text(
                      "MAKE YOUR",
                      style: TextTheme.of(context).bodyLarge,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "HOME BEAUTIFUL",
                      style: TextTheme.of(context).titleLarge,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 30, right: 20, top: 20),
                      child: Text(
                        "The best simple place where you discover most wonderful furnitures and make your home beautiful",
                        style: TextTheme.of(context).bodySmall,
                        maxLines: 3,
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 200, left: 80),
                      child: Button(
                        text: 'GET STARTED',
                        onPressed: () {
                          Get.toNamed(RoutesNames.loginPage);
                        },
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
