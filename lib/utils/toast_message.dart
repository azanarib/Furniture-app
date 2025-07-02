import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';

class Utils {
  static message(
    String message, {
    Color txtColor = Colors.white,
    Color bgColor = Colors.lightGreenAccent,
  }) {
    Fluttertoast.showToast(
      msg: message,
      textColor: txtColor,
      backgroundColor: bgColor,
    );
  }
}
