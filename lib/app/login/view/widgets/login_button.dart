import 'package:flutter/material.dart';
import 'package:menzclub_admin/app/constants/colors.dart';
import 'package:menzclub_admin/app/routes/routes.dart';

class LoginTextButton extends StatelessWidget {
  const LoginTextButton({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        // RoutesProvider.nextScreen(
        //   screen: const SignUpScreen(),
        // );
      },
      child: Text(
        text,
        style: TextStyle(
          color: primary,
          fontSize: 15,
        ),
      ),
    );
  }
}
