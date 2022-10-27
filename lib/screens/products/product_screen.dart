import 'package:flutter/material.dart';
import 'package:flutter_new_ui_project/constants.dart';
import 'components/body.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0,
        title: Text('Dashboard'),
        centerTitle: false,
        actions: const <Widget>[
          IconButton(onPressed: null, icon: Icon(Icons.notification_add_outlined, color: Colors.white,))
        ],
      ),
      body: const Body(),
    );
  }
}
