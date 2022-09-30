// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:menzclub_admin/app/category/view/category_screen.dart';
import 'package:menzclub_admin/app/constants/colors.dart';
import 'package:menzclub_admin/app/home/view/home.dart';
import 'package:menzclub_admin/app/routes/routes.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width / 1.8,
        child: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: <Widget>[
                  DrawerHeader(
                      decoration: BoxDecoration(
                        color: primary,
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://i.pinimg.com/originals/d0/53/f2/d053f2394d420d8d3712046f4e8f80cc.jpg'),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '',
                            style: TextStyle(color: kWhite),
                          ),
                        ],
                      )),
                  ListTile(
                    leading: const Icon(
                      Icons.maps_home_work,
                    ),
                    title: const Text(
                      'Home',
                    ),
                    onTap: () {
                      RoutesProvider.backScreen();
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.business_rounded),
                    title: const Text(
                      'All Products',
                    ),
                    onTap: () {
                      RoutesProvider.backScreen();
                      // RoutesProvider.nextScreen(screen: HomeScreen());
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.add_business,
                    ),
                    title: const Text(
                      'Add Products',
                    ),
                    onTap: () {
                      RoutesProvider.backScreen();
                      RoutesProvider.nextScreen(screen: const CategoryScreen());
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.settings,
                    ),
                    title: const Text(
                      'Settings',
                    ),
                    onTap: () {
                      RoutesProvider.backScreen();
                      RoutesProvider.nextScreen(screen: HomeScreen());
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.logout,
                    ),
                    title: const Text(
                      'Logout',
                    ),
                    onTap: () => {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
