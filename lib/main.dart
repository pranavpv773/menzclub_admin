import 'package:flutter/material.dart';
import 'package:menzclub_admin/app/add_products/view_model/add_product_provider.dart';
import 'package:menzclub_admin/app/home/view/home.dart';
import 'package:menzclub_admin/app/login/view/login.dart';
import 'package:menzclub_admin/app/routes/routes.dart';
import 'package:provider/provider.dart';
import 'app/login/view_model/login_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (crete) => LoginProvider(),
        ),
        ChangeNotifierProvider(
          create: (crete) => AddProductProvider(),
        ),
      ],
      child: MaterialApp(
        navigatorKey: RoutesProvider.navigatorKey,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen(),
      ),
    );
  }
}
