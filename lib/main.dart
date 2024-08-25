import 'package:flutter/material.dart';

import 'Views/FullView/LoginView.dart';

void main() {
  runApp(const LoginTask());
}

class LoginTask extends StatelessWidget {
  const LoginTask({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:LoginView.routeName ,
      routes: {
        LoginView.routeName:(context)=>const LoginView(),
      },
    );
  }
}


