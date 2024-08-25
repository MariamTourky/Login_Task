import 'package:flutter/material.dart';
import 'package:login_task/Widgets/showSnackBar.dart';

class CustomLoginButon extends StatelessWidget {
  CustomLoginButon({required this.text,required this.formKey}) ;
  final GlobalKey<FormState> formKey;
  final String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (formKey.currentState!.validate()) {
          ScaffoldMessenger.of(context).showSnackBar(
              showSnackBar(context, "Login Successfully"),  );
        };
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        width: double.infinity,
        height: 60,
        child: Center(
          child: Text(text),
        ),
      ),
    );
  }
}






















