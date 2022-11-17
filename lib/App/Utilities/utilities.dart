import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void toastMe(String content) {
  Fluttertoast.showToast(
    msg: content,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    backgroundColor: Colors.black12,
    textColor: Colors.white,
    fontSize: 16.0,
  );
}