import 'package:flutter/material.dart';
import 'package:menzclub_admin/app/add_products/view/add_product.dart';
import 'package:menzclub_admin/app/add_products/view_model/add_product_provider.dart';
import 'package:menzclub_admin/app/constants/app_list.dart';
import 'package:menzclub_admin/app/constants/colors.dart';
import 'package:menzclub_admin/app/routes/routes.dart';
import 'package:provider/provider.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary,
        title: const Text('Select Category'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemCount: AppList.categoryList.length,
            itemBuilder: (BuildContext ctx, index) {
              return GestureDetector(
                onTap: () {
                  context.read<AddProductProvider>().category =
                      AppList.categoryList[index];
                  RoutesProvider.nextScreen(screen: const AddProductScreen());
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    AppList.categoryList[index],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
