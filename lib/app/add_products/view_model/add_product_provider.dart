import 'dart:developer';
import 'dart:io';
import 'package:cloudinary/cloudinary.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:menzclub_admin/app/add_products/api_services/product_api.dart';
import 'package:menzclub_admin/app/add_products/model/product_model.dart';
import 'package:menzclub_admin/app/home/view/home.dart';
import 'package:menzclub_admin/app/routes/routes.dart';

class AddProductProvider with ChangeNotifier {
  final addProductKey = GlobalKey<FormState>();
  final name = TextEditingController();
  final description = TextEditingController();
  final brand = TextEditingController();
  final String category = "shirt";
  final color = TextEditingController();
  final size = TextEditingController();
  final offer = TextEditingController();
  final price = TextEditingController();
  final material = TextEditingController();
  List<File> images = [];
  List<String> imageUrls = [];
  void addProduct() async {
    if (addProductKey.currentState!.validate() && images.isNotEmpty) {
      final cloudinary = Cloudinary.signedConfig(
        apiKey: "698566279964485",
        apiSecret: "rpCEvqOuNFwCYVXtMRxtCx9aOu4",
        cloudName: 'dr0cl0sic',
      );

      for (int i = 0; i < images.length; i++) {
        final file = File(images[i].path).readAsBytesSync();
        final response = await cloudinary.upload(
            file: images[i].path,
            fileBytes: file,
            resourceType: CloudinaryResourceType.image,
            folder: "menzclub",
            fileName: images[i].path,
            progressCallback: (count, total) {
              log('Uploading image from file with progress: $count/$total');
            });
        imageUrls.add(response.secureUrl!);
      }
      final data = ProductModel(
        productname: name.text,
        productdescription: description.text,
        images: [],
        productbrand: brand.text,
        productcategory: category,
        productcolor: color.text,
        productmaterial: material.text,
        productoffer: double.parse(offer.text),
        productprice: double.parse(price.text),
        productsize: double.parse(size.text),
      );
      log(name.text);
      log(description.text);
      log(brand.text);
      log(color.text);
      log(material.text);
      log(offer.text);
      log(price.text);
      log(size.text);
      ProductResponse? resp = await ProductApiServices().adminAddProduct(data);
      log('get in to second');
      if (resp!.status) {
        Fluttertoast.showToast(
          msg: resp.message,
          toastLength: Toast.LENGTH_LONG,
        );
        RoutesProvider.nextScreen(
          screen: HomeScreen(),
        );
        // disposeControll();
      } else {
        Fluttertoast.showToast(
          msg: resp.message,
          toastLength: Toast.LENGTH_LONG,
        );
      }
    }
  }

  void selectImages() async {
    var res = await pickImages();
    images = res;
    notifyListeners();
  }

  Future<List<File>> pickImages() async {
    List<File> images = [];
    try {
      var files = await FilePicker.platform.pickFiles(
        type: FileType.image,
        allowMultiple: true,
      );
      if (files != null && files.files.isNotEmpty) {
        for (int i = 0; i < files.files.length; i++) {
          images.add(File(files.files[i].path!));
        }
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return images;
  }

  disposeControll() {
    name.clear();
    description.clear();
    price.clear();
    size.clear();
    offer.clear();
    color.clear();
    brand.clear();
  }
}
