import 'package:flutter/material.dart';
import 'package:menzclub_admin/app/constants/colors.dart';
import 'widgets/drawer.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawerEnableOpenDragGesture: false,
      appBar: AppBar(
        backgroundColor: primary,
        centerTitle: true,
        title: TextButton(
          onPressed: () {
            // RoutesProvider.nextScreen(
            //   screen: const AddItems(),
            // );
          },
          child: Text(
            "MenzClub",
            style: TextStyle(
              color: kWhite,
            ),
          ),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(0),
            bottomLeft: Radius.circular(0),
          ),
        ),
        iconTheme: IconThemeData(color: kWhite),
        leading: IconButton(
          icon: CircleAvatar(
            backgroundColor: kWhite,
            radius: 110,
            backgroundImage: const NetworkImage(
              'https://www.highpoint.com.au/Upload/Highpoint/Media/Store-Logo/menzclub-logo.png?width=250&height=161',
            ),
          ),
          onPressed: () => _scaffoldKey.currentState?.openDrawer(),
        ),
      ),
      drawer: const NavDrawer(),
    );
  }
}
