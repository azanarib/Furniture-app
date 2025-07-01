import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app/resources/assets_images/asset_images_address.dart';
import 'package:furniture_app/resources/components/button.dart';
import 'package:furniture_app/resources/components/custom_divider.dart';
import 'package:furniture_app/resources/components/text_field.dart';
import 'package:furniture_app/resources/components/txt_button.dart';
import 'package:furniture_app/resources/routes/routes_names.dart';
import 'package:get/get.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    DividerWidget(),
                    Image(
                      height: 60,
                      width: 60,
                      image: AssetImage(
                        AssetImageAddress.grouping,
                      ),
                    ),
                    DividerWidget(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: RichText(
                  text: TextSpan(
                    text: "HELLO !",
                    style: TextTheme.of(context).bodyLarge?.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: 30,
                        fontFamily: "Merriweather"),
                    children: [
                      TextSpan(
                        text: "\n\nWELCOME BACK",
                        style: TextTheme.of(context).bodyLarge?.copyWith(
                              fontSize: 24,
                              fontFamily: "Merriweather",
                              fontWeight: FontWeight.w700,
                              letterSpacing: 5 / 100,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 15),
                height: 430,
                width: 345,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(),
                  boxShadow: [
                    BoxShadow(
                      blurStyle: BlurStyle.outer,
                      blurRadius: 30,
                      color: Colors.black38,
                    ),
                  ],
                ),
                child: Column(
                  spacing: 30,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    CustomTextField(
                      labelText: "Email",
                    ),
                    CustomTextField(
                      labelText: "Password",
                      suffIcon: Icon(CupertinoIcons.eye),
                    ),
                    CustomTextButton(
                      text: "Forgot Password",
                      onPress: () {
                        Get.toNamed(RoutesNames.forgetPassword);
                      },
                    ),
                    Button(
                      text: "LOG IN",
                      width: 285,
                      height: 50,
                    ),
                    CustomTextButton(
                      text: "SIGN UP",
                      onPress: () {
                        Get.toNamed(RoutesNames.signUpPage);
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
