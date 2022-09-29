import 'package:flutter/material.dart';
import 'package:menzclub_admin/app/add_products/view/widget/description_form.dart';
import 'package:menzclub_admin/app/add_products/view_model/add_product_provider.dart';
import 'package:provider/provider.dart';
import 'text_form.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const ScrollPhysics(),
      child: Form(
        key: context.read<AddProductProvider>().addProductKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // const ImageProfileAdd(),
              SignUpTextforms(
                icon: Icons.person_outline_outlined,
                text: "Label",
                obscureText: false,
                vertical: 20,
                controller: context.read<AddProductProvider>().name,
              ),
              DescriptionTextforms(
                text: "Description",
                controller: context.read<AddProductProvider>().description,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 6,
                    child: SignUpTextforms(
                      icon: Icons.person_outline_outlined,
                      text: "Price",
                      obscureText: false,
                      vertical: 20,
                      controller: context.read<AddProductProvider>().brand,
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: SignUpTextforms(
                      icon: Icons.person_outline_outlined,
                      text: "Offer",
                      obscureText: false,
                      vertical: 20,
                      controller: context.read<AddProductProvider>().brand,
                    ),
                  ),
                ],
              ),
              SignUpTextforms(
                icon: Icons.person_outline_outlined,
                text: "Category",
                obscureText: false,
                vertical: 20,
                controller: context.read<AddProductProvider>().category,
              ),
              SignUpTextforms(
                icon: Icons.mail_outline_sharp,
                text: "Color",
                obscureText: false,
                vertical: 15,
                controller: context.read<AddProductProvider>().color,
              ),
              SignUpTextforms(
                icon: Icons.send_to_mobile_rounded,
                text: "Brand",
                obscureText: false,
                vertical: 15,
                controller: context.read<AddProductProvider>().brand,
              ),
              SignUpTextforms(
                icon: Icons.lock_outline,
                text: "Size",
                obscureText: false,
                vertical: 15,
                controller: context.read<AddProductProvider>().size,
              ),
              SignUpTextforms(
                icon: Icons.lock_reset_outlined,
                text: "Fit",
                obscureText: false,
                vertical: 15,
                controller: context.read<AddProductProvider>().fit,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
