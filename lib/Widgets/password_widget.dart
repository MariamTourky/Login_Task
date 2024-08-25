import 'package:flutter/material.dart';

import 'CustomFormTextField.dart';

class PasswordFied extends StatelessWidget {
  final TextEditingController _passwordController = TextEditingController();
  PasswordFied({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFormTextField(
      controller: _passwordController,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your password';
        }
        if (value.length < 6) {
          return 'Password must be at least 6 numbers';
        }
        return null;
      },
      Text: "Password",
      keyboardType: TextInputType.number,
      obscureText: true,
    );
  }
}
