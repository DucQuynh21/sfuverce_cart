import 'package:flutter/material.dart';
import 'package:sfuverce_app/data/fake.dart';
import 'package:sfuverce_app/screens/home/widgets/header.dart';
import 'package:sfuverce_app/screens/home/widgets/section.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Header(),
          Section(
            'Categories',
            Fake.categories.map((c) {
              return Text(c.title);
            }).toList(),
          )
        ],
      )),
    );
  }
}
