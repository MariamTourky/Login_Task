import 'package:flutter/material.dart';
import 'package:login_task/Resources/ColorsApp.dart';
import 'package:login_task/Resources/Styles.dart';
import 'package:login_task/Widgets/email_widget.dart';
import 'package:login_task/Widgets/password_widget.dart';
import '../../Widgets/CustomLoginButton.dart';

class LoginViewBody extends StatelessWidget {
   LoginViewBody({super.key});

   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp().blueGray,
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              const SizedBox(
                height: 75,
              ),
              Image.asset(
                'assets/images/scholar.png',
                height: 100,
              ),
              Center(
                child: Text(
                  'Scholar Chat',
                  style: TextStyles.customWhiteTextStyle32
                ),
              ),
              const SizedBox(
                height: 75,
              ),
              Text(
                'LOGIN',
                  style: TextStyles.customWhiteTextStyle24
              ),
              const SizedBox(
                height: 20,
              ),
              EmailField(),
              const SizedBox(
                height: 10,
              ),
              PasswordFied(),
              const SizedBox(
                height: 20,
              ),
              CustomLoginButon(
                text: 'LOGIN', formKey: _formKey,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'don\'t have an account?',
                    style: TextStyles.customWhiteTextStyle24,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                    },
                    child: const Text(
                      'Register',
                      style: TextStyle(
                        color: Color(0xffC7EDE6),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
