import 'package:flutter/material.dart';

 showSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      duration: const Duration(seconds: 2),
      backgroundColor: Colors.grey,
      padding: const EdgeInsets.only(top: 30 ,bottom: 30,left: 130),
      content: Text(message),
    ),
  );
}
