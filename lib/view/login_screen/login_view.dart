import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app/resources/assets_images/asset_images_address.dart';
import 'package:furniture_app/resources/components/button.dart';
import 'package:furniture_app/resources/components/custom_divider.dart';
import 'package:furniture_app/resources/components/text_field.dart';
import 'package:furniture_app/resources/components/txt_button.dart';
import 'package:furniture_app/resources/routes/routes_names.dart';
import 'package:furniture_app/viewModels/controller/login_controller.dart';
import 'package:get/get.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormState>();
  final loginController = Get.put(LoginController());

  @override
  void initState() {
    loginController.onInit();
    super.initState();
  }

  @override
  void dispose() {
    loginController.onClose();
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
                height: 480,
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
                child: Form(
                  key: _formKey,
                  child: Column(
                    spacing: 30,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      CustomTextField(
                        labelText: "Email",
                        validate: (value) {
                          if (value!.isEmpty) {
                            return "Please enter your email.";
                          }
                          return null;
                        },
                        controller: loginController.emailController.value,
                      ),
                      CustomTextField(
                        labelText: "Password",
                        suffIcon: Icon(CupertinoIcons.eye),
                        controller: loginController.passwordController.value,
                        validate: (value) {
                          if (value!.isEmpty) {
                            return "Please enter your password.";
                          } else if (value.length < 7) {
                            return "Password contains at leaset 8 characters.";
                          } else {
                            return null;
                          }
                        },
                      ),
                      CustomTextButton(
                        text: "Forgot Password",
                        onPress: () {
                          Get.toNamed(RoutesNames.forgetPassword);
                        },
                      ),
                      Obx(
                        () => Button(
                          change: loginController.change.value,
                          icon: Icon(
                            Icons.done,
                            color: Colors.white,
                            size: 50,
                          ),
                          text: "LOG IN",
                          width: 285,
                          height: 50,
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              loginController.loginUser();
                            }
                          },
                        ),
                      ),
                      CustomTextButton(
                        text: "SIGN UP",
                        onPress: () {
                          Get.toNamed(RoutesNames.signUpPage);
                        },
                      ),
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
