import 'package:flutter/material.dart';
import 'package:menzclub_admin/app/constants/colors.dart';

class DescriptionTextforms extends StatelessWidget {
  const DescriptionTextforms({
    Key? key,
    required this.text,
    required this.controller,
  }) : super(key: key);
  final String text;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        maxLines: 15,
        // ignore: body_might_complete_normally_nullable
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please fill this field';
          }
        },
        controller: controller,
        style: TextStyle(
          color: kGrey,
          fontSize: 18,
        ),
        decoration: InputDecoration.collapsed(
          fillColor: kWhite,
          filled: true,
          // prefixIcon: Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 5.0),
          //   child: Icon(
          //     icon,
          //     color: primary,
          //   ),
          // ),
          // enabledBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(10),
          //   borderSide: BorderSide(
          //     color: primary,
          //     width: 2.0,
          //   ),
          // ),
          // focusedBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(10),
          //   borderSide: const BorderSide(
          //     color: Colors.teal,
          //     width: 2.0,
          //   ),
          // ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: primary,
              width: 2.0,
            ),
          ),
          hintText: text,
          hintStyle: TextStyle(
            fontSize: 16,
            color: primary,
          ),
        ),
      ),
    );
  }
}
