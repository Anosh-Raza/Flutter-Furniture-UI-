import 'package:flutter/material.dart';
import 'package:flutter_new_ui_project/models/product.dart';
import 'package:flutter_new_ui_project/screens/details/components/product_image.dart';

import '../../../constants.dart';
import 'color_list.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          decoration: BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          child: Column(
            children: <Widget>[
              Center(
                child: Hero(
                  tag: '${product.id}',
                  child: ProductListener(
                      size: size,
                      image: product.image,
                  ),
                ),
              ),
              ListofColors(),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                child: Text(
                  "Poppy Plastic Tub Chair",
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              Text(
                '\$${product.price}',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: kSecondaryColor,
                ),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                child: Text(
                  product.description,
                  style: TextStyle(color: kTextColor),
                ),
              ),
              SizedBox(height: kDefaultPadding,)
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(kDefaultPadding),
          padding: EdgeInsets.symmetric(
            horizontal: kDefaultPadding,
            vertical: kDefaultPadding / 2,
          ),
          decoration: BoxDecoration(
            color: Color(0xFFFCBF1E),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            children: <Widget>[
              Icon(Icons.chat_bubble_outline_sharp, size: 16,),
              SizedBox(width: kDefaultPadding / 2,),
              Text("Chat",
              style: TextStyle(color: Colors.white, fontSize: 11),
              ),
            ],
          ),
        ),
      ],
    );
  }
}



