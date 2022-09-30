import 'package:flutter/material.dart';

class AddProductProvider with ChangeNotifier {
  final addProductKey = GlobalKey<FormState>();
  final name = TextEditingController();
  final description = TextEditingController();
  final brand = TextEditingController();
  final category = TextEditingController();
  final color = TextEditingController();
  final size = TextEditingController();
  final offer = TextEditingController();
  final price = TextEditingController();
  final material = TextEditingController();
  void addProduct() async {
    if (addProductKey.currentState!.validate()) {}
  }

  disposeControll() {
    name.clear();
    color.clear();
    category.clear();
    description.clear();
    brand.clear();
  }
}
