import 'package:flutter/material.dart';
import 'package:menzclub_admin/app/add_products/view_model/add_product_provider.dart';
import 'package:menzclub_admin/app/constants/colors.dart';
import 'package:provider/provider.dart';
import 'widget/sign_up_form.dart';

class AddProductScreen extends StatelessWidget {
  const AddProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<AddProductProvider>().disposeControll();
    return SafeArea(
      child: Scaffold(
        backgroundColor: primary1,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SignupForm(),
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
      ),
    );
  }
}
