import 'package:flutter/material.dart';

class AddProductProvider with ChangeNotifier {
  final addProductKey = GlobalKey<FormState>();
  final name = TextEditingController();
  final description = TextEditingController();
  final brand = TextEditingController();
  final category = TextEditingController();
  final color = TextEditingController();
  final size = TextEditingController();
  final fit = TextEditingController();
  void addProduct(
    BuildContext context,
    String email,
    String password,
    String name,
    String phone,
    String confirmPass,
  ) async {
    if (addProductKey.currentState!.validate()) {
      if (password != confirmPass) {}
    }
  }

  disposeControll() {
    name.clear();
    color.clear();
    category.clear();
    description.clear();
    brand.clear();
  }
}
