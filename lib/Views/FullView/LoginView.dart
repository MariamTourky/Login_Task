import 'package:flutter/material.dart';
import 'package:login_task/Views/BodyView/LoginViewBody.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        body: LoginViewBody(),
    );
  }

}
