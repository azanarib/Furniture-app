import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app/resources/routes/routes_names.dart';
import 'package:furniture_app/utils/toast_message.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  late Rx<TextEditingController> emailController;
  late Rx<TextEditingController> passwordController;
  RxBool change = false.obs;
  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;

  @override
  void onInit() {
    emailController = TextEditingController().obs;
    passwordController = TextEditingController().obs;
    super.onInit();
  }

  @override
  void onClose() {
    emailController.close();
    passwordController.close();
    super.onClose();
  }

  void loginUser() {
    change.value = true;
    FirebaseAuth auth = FirebaseAuth.instance;
    auth
        .signInWithEmailAndPassword(
      email: emailController.value.text,
      password: passwordController.value.text,
    )
        .then((value) {
      Future.delayed(Duration(seconds: 2), () {
        change.value = false;
        Get.toNamed(RoutesNames.homePage);
      });
      Utils.message("Logged in");
    }).onError((stackTrace, error) {
      change.value = false;
      Utils.message(
        "User not found",
        bgColor: Colors.red,
        txtColor: Colors.black,
      );
    });
  }
}
