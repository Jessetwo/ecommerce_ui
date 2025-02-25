import 'package:ecommerce_app/shared/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:provider/provider.dart';
import 'package:ecommerce_app/controllers/mainscreen_providers.dart';

class Bottomnavbar extends StatelessWidget {
  const Bottomnavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(
        builder: (context, mainScreenNotifier, child) {
      return SafeArea(
          child: Padding(
        padding: EdgeInsets.all(8),
        child: Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BottomNav(
                  //icon: Ionicons.home,
                  onTap: () {
                    mainScreenNotifier.pageIndex = 0;
                  },
                  icon: mainScreenNotifier.pageIndex == 0
                      ? Ionicons.home
                      : Ionicons.home_outline),
              BottomNav(
                //icon: Ionicons.search,
                onTap: () {
                  mainScreenNotifier.pageIndex = 1;
                },
                icon: mainScreenNotifier.pageIndex == 1
                    ? Ionicons.search
                    : Ionicons.search_outline,
              ),
              BottomNav(
                //icon: Ionicons.add,
                onTap: () {
                  mainScreenNotifier.pageIndex = 2;
                },
                icon: mainScreenNotifier.pageIndex == 2
                    ? Ionicons.add
                    : Ionicons.add_circle_outline,
              ),
              BottomNav(
                //icon: Ionicons.cart,
                onTap: () {
                  mainScreenNotifier.pageIndex = 3;
                },
                icon: mainScreenNotifier.pageIndex == 3
                    ? Ionicons.cart
                    : Ionicons.cart_outline,
              ),
              BottomNav(
                //icon: Ionicons.person,
                onTap: () {
                  mainScreenNotifier.pageIndex = 4;
                },
                icon: mainScreenNotifier.pageIndex == 4
                    ? Ionicons.person
                    : Ionicons.person_outline,
              )
            ],
          ),
        ),
      ));
    });
  }
}
