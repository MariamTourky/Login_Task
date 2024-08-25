import 'package:flutter/material.dart';

import 'CustomFormTextField.dart';

class EmailField extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();

  EmailField({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFormTextField(
      controller: _emailController,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your email';
        }
        if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
          return 'Please enter a valid email';
        }
        return null;
      },
      Text: "E-mail",
      keyboardType: TextInputType.emailAddress,
    );
  }
}
