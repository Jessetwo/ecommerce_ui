import 'package:ecommerce_app/controllers/mainscreen_providers.dart';
import 'package:ecommerce_app/shared/BottomNavBar.dart';
import 'package:ecommerce_app/ui/cartpage.dart';
import 'package:ecommerce_app/ui/homepage.dart';
import 'package:ecommerce_app/ui/profile.dart';
import 'package:ecommerce_app/ui/searchpage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class Mainscreen extends StatelessWidget {
  Mainscreen({super.key});
  List<Widget> pageList = [
    Homepage(),
    Searchpage(),
    Homepage(),
    Cartpage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(
      builder: (context, mainScreenNotifier, child) {
        return Scaffold(
            backgroundColor: Color(0xFFE2E2E2),
            body: pageList[mainScreenNotifier.pageIndex],
            bottomNavigationBar: Bottomnavbar());
      },
    );
  }
}
