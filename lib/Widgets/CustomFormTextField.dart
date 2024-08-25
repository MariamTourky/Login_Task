import 'package:flutter/material.dart';

class CustomFormTextField extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final String Text;
  final bool obscureText;
  final TextInputType keyboardType;
  const CustomFormTextField(
      {super.key,
      required this.controller,
      required this.validator,
      required this.Text,
      required this.keyboardType,
      this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: Text,
        hintText: 'Enter your $Text',
        hintStyle: TextStyle(
          color: Colors.white,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),

        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
      ),
      validator: validator,
    );
  }
}
