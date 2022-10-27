import 'package:flutter/material.dart';
import 'package:flutter_new_ui_project/constants.dart';
import '../../../components/searchbox.dart';
import '../../details/detail_screen.dart';
import 'category_list.dart';
import 'product_card.dart';
import 'package:flutter_new_ui_project/models/product.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SearchBox(onChanged: (value) {},),
        CategoryList(),
        SizedBox(height: kDefaultPadding/2,),
        Expanded(child: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 70),
              decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
              topRight: Radius.circular(40),)
            ),
            ),
            ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) => ProductCard(
                  itemIndex: index,
                  product: products[index],
                  press: (){
                    Navigator.push(context, 
                        MaterialPageRoute(builder: (context) => DetailScreen(
                          product: products[index],
                        )));
                  },
                ))
            // ProductCard(),
          ],
        ))
      ],
    );
  }
}




