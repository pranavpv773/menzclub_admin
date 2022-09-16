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
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Container(
            height: MediaQuery.of(context).size.height,
            color: primary,
            child: const SignupForm(),
          ),
        ),
      ),
    );
  }
}
