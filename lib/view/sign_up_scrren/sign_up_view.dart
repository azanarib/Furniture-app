import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app/resources/assets_images/asset_images_address.dart';
import 'package:furniture_app/resources/components/button.dart';
import 'package:furniture_app/resources/components/custom_divider.dart';
import 'package:furniture_app/resources/components/text_field.dart';
import 'package:furniture_app/resources/components/txt_button.dart';
import 'package:furniture_app/resources/routes/routes_names.dart';
import 'package:furniture_app/viewModels/controller/sign_controller.dart';
import 'package:get/get.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final signupController = Get.put(SignupController());
  final _formkey = GlobalKey<FormState>();

  @override
  void initState() {
    signupController.onInit();
    super.initState();
  }

  @override
  void dispose() {
    signupController.onClose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 20, top: 40),
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
                constraints: BoxConstraints(maxHeight: 550, maxWidth: 345),
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
                child: Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      CustomTextField(
                        labelText: "Name",
                        controller: signupController.nameController.value,
                        validate: (value) {
                          if (value!.isEmpty) {
                            return "Please enter your name.";
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CustomTextField(
                        labelText: "Email",
                        controller: signupController.emailcontroller.value,
                        validate: (value) {
                          if (value!.isEmpty) {
                            return "Please enter your email.";
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CustomTextField(
                        labelText: "Password",
                        suffIcon: Icon(CupertinoIcons.eye),
                        controller: signupController.passwordController.value,
                        validate: (value) {
                          if (value!.isEmpty) {
                            return "Please enter your password";
                          } else if (value.length < 7) {
                            return "Password contains at least 8 characters.";
                          } else {
                            signupController.password.value = value.tr;
                            return null;
                          }
                        },
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CustomTextField(
                        labelText: "New Password",
                        controller:
                            signupController.confirmPasswordController.value,
                        suffIcon: Icon(CupertinoIcons.eye),
                        validate: (value) {
                          if (value!.isEmpty) {
                            return "Please enter your password.";
                          } else if (value != signupController.password.value) {
                            return "Password should be same.";
                          } else if (value.length < 7) {
                            return "Password contains at least 8 characters.";
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Obx(
                        () => Button(
                          text: "SIGN UP",
                          change: signupController.isChange.value,
                          icon: Icon(
                            Icons.done,
                            size: 50,
                            color: Colors.white,
                          ),
                          width: 270,
                          height: 50,
                          onPressed: () {
                            if (_formkey.currentState!.validate()) {
                              signupController.createUserAccount();
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Already have an account?",
                            style: TextTheme.of(context).bodySmall,
                          ),
                          SizedBox(
                            width: 10,
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
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
