import 'package:flutter/material.dart';
import 'package:menzclub_admin/app/add_products/view_model/add_product_provider.dart';
import 'package:menzclub_admin/app/constants/colors.dart';
import 'package:provider/provider.dart';
import 'text_form.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Form(
        key: context.read<AddProductProvider>().addProductKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // const ImageProfileAdd(),
              SignUpTextforms(
                icon: Icons.person_outline_outlined,
                text: "Category",
                obscureText: false,
                vertical: 20,
                controller: context.read<AddProductProvider>().userName,
              ),
              SignUpTextforms(
                icon: Icons.mail_outline_sharp,
                text: "Color",
                obscureText: false,
                vertical: 15,
                controller: context.read<AddProductProvider>().email,
              ),
              SignUpTextforms(
                icon: Icons.send_to_mobile_rounded,
                text: "Brand",
                obscureText: false,
                vertical: 15,
                controller: context.read<AddProductProvider>().phoneNumber,
              ),
              SignUpTextforms(
                icon: Icons.lock_outline,
                text: "Size",
                obscureText: true,
                vertical: 15,
                controller: context.read<AddProductProvider>().password,
              ),
              SignUpTextforms(
                icon: Icons.lock_reset_outlined,
                text: "Fit",
                obscureText: true,
                vertical: 15,
                controller: context.read<AddProductProvider>().confirmPassword,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 120,
                      vertical: 15,
                    ),
                    primary: primary2,
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        5,
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Add Product",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
