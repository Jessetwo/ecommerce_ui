import 'package:ecommerce_app/shared/appstyle.dart';
import 'package:flutter/material.dart';

class Searchpage extends StatefulWidget {
  const Searchpage({super.key});

  @override
  State<Searchpage> createState() => _SearchpageState();
}

class _SearchpageState extends State<Searchpage> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      'This is SearchPage',
      style: appstyle(40, Colors.black, FontWeight.bold),
    ));
  }
}
