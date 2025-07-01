import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app/resources/assets_images/asset_images_address.dart';
import 'package:furniture_app/resources/components/button.dart';
import 'package:furniture_app/resources/components/custom_divider.dart';
import 'package:furniture_app/resources/components/text_field.dart';
import 'package:furniture_app/resources/components/txt_button.dart';
import 'package:furniture_app/resources/routes/routes_names.dart';
import 'package:get/get.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
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
                child: Text(
                  "WELCOME",
                  style: TextTheme.of(context).bodyLarge?.copyWith(
                        fontSize: 24,
                        fontFamily: "Merriweather",
                        fontWeight: FontWeight.w700,
                        letterSpacing: 5 / 100,
                      ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 15),
                height: 550,
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
                      labelText: "Name",
                    ),
                    CustomTextField(
                      labelText: "Email",
                    ),
                    CustomTextField(
                      labelText: "Password",
                      suffIcon: Icon(CupertinoIcons.eye),
                    ),
                    CustomTextField(
                      labelText: "New Password",
                      suffIcon: Icon(CupertinoIcons.eye),
                    ),
                    Button(
                      text: "SIGN UP",
                      width: 270,
                      height: 50,
                      onPressed: (){
                        Get.toNamed(RoutesNames.loginPage);
                      },
                    ),
                    Row(
                      spacing: 10,
                      children: [
                        Text(
                          "Already have an account?",
                          style: TextTheme.of(context).bodySmall,
                        ),
                        CustomTextButton(
                          onPress: () {
                            Get.toNamed(RoutesNames.loginPage);
                          },
                          text: "SIGN IN",
                        )
                      ],
                    )
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
