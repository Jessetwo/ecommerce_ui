import 'package:ecommerce_app/shared/appstyle.dart';
import 'package:flutter/material.dart';

class Cartpage extends StatefulWidget {
  const Cartpage({Key? key}) : super(key: key);

  @override
  _CartpageState createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        'This is Cart',
        style: appstyle(40, Colors.black, FontWeight.bold),
      )),
    );
  }
}
