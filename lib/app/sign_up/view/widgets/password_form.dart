// ignore_for_file: body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:menz_cart_app/app/constants/colors.dart';

class PasswordTextforms extends StatelessWidget {
  const PasswordTextforms({
    Key? key,
    required this.icon,
    required this.text,
    required this.obscureText,
    required this.vertical,
    required this.controller,
  }) : super(key: key);
  final IconData icon;
  final String text;
  final bool obscureText;
  final double vertical;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please fill this field';
        }
      },
      keyboardType: TextInputType.visiblePassword,
      controller: controller,
      style: TextStyle(
        color: kGrey,
        fontSize: 16,
      ),
      obscureText: obscureText,
      decoration: InputDecoration(
        fillColor: kWhite,
        filled: true,
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Icon(
            icon,
            color: primary,
          ),
        ),
        enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: kGrey,
            width: 2.0,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.teal,
            width: 2.0,
          ),
        ),
        border: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: kGrey,
            width: 2.0,
          ),
        ),
        hintText: text,
        hintStyle: TextStyle(
          fontSize: 15,
          color: kGrey,
        ),
      ),
    );
  }
}