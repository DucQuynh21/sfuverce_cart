import 'package:flutter/material.dart';
import 'package:sfuverce_app/data/fake.dart';
import 'package:sfuverce_app/screens/home/widgets/search_bar.dart';
import 'package:sfuverce_app/widgets/cart.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Funiture Shop',
                  style: TextStyle(fontSize: 25.0, height: 1)),
              Cart(numberOfItemsInCart: Fake.numberOfItemsInCart),
            ],
          ),
          Text(
            'Get unique furniture for your home',
            style: TextStyle(fontSize: 15, height: 2, color: Colors.red),
          ),
          SearchBar(),
        ],
      ),
    );
  }
}
