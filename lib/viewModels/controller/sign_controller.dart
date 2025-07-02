import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app/resources/routes/routes_names.dart';
import 'package:furniture_app/utils/toast_message.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  late Rx<TextEditingController> emailcontroller;
  late Rx<TextEditingController> passwordController;
  late Rx<TextEditingController> nameController;
  late Rx<TextEditingController> confirmPasswordController;
  RxString password = "".obs;
  RxBool isChange = false.obs;

  @override
  void onInit() {
    emailcontroller = TextEditingController().obs;
    passwordController = TextEditingController().obs;
    confirmPasswordController = TextEditingController().obs;
    nameController = TextEditingController().obs;

    super.onInit();
  }

  @override
  void onClose() {
    emailcontroller.close();
    passwordController.close();
    nameController.close();
    confirmPasswordController.close();
    super.onClose();
  }

  void createUserAccount() {
    isChange.value = true;
    FirebaseAuth auth = FirebaseAuth.instance;
    auth
        .createUserWithEmailAndPassword(
      email: emailcontroller.value.text,
      password: passwordController.value.text,
    )
        .then((value) {
      Utils.message("Account Created Successfully.");
      Future.delayed(Duration(seconds: 2), () {
        isChange.value = false;
        Get.toNamed(RoutesNames.loginPage);
      });
    }).onError((error, stackTrace) {
      isChange.value = false;
      Utils.message(
        "Account not created.",
        bgColor: Colors.red,
        txtColor: Colors.black,
      );
    });
  }
}
