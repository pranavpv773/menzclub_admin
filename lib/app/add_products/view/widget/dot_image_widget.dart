import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:menzclub_admin/app/constants/colors.dart';

class DottedImageBorder extends StatelessWidget {
  const DottedImageBorder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: DottedBorder(
        color: kWhite,
        borderType: BorderType.RRect,
        radius: const Radius.circular(10),
        dashPattern: const [20, 8],
        strokeCap: StrokeCap.round,
        child: Container(
          width: double.infinity,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.folder_open,
                color: kWhite,
                size: 40,
              ),
              const SizedBox(height: 15),
              Text(
                'Select Product Images',
                style: TextStyle(
                  fontSize: 15,
                  color: kWhite,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
