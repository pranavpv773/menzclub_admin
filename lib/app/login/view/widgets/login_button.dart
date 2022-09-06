import 'package:flutter/material.dart';
import 'package:menzclub_admin/app/constants/colors.dart';
import 'package:menzclub_admin/app/login/view_model/login_provider.dart';
import 'package:provider/provider.dart';

class LoginTextButton extends StatelessWidget {
  const LoginTextButton({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.read<LoginProvider>().onTabLoginFunction(
            context,
            context.read<LoginProvider>().email.text,
            context.read<LoginProvider>().password.text);
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
