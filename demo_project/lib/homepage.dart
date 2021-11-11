import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    MediaQuery.of(context).size.width;
    MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.pink[300],
          appBar: AppBar(
            backgroundColor: Colors.pink[300],
            elevation: 0.0,
            title: Text("Chair"),
            centerTitle: true,
            leading: IconButton(
              onPressed: () {},
              icon: Image.asset("assets/icons/cross.png"),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Image.asset("assets/icons/cart.png"),
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/furniture.jpg",
                    height: size.height * 0.5,
                    width: double.infinity,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Price : \$500",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.white,
                        ),
                      ),
                      SmoothStarRating(
                        rating: 4,
                        borderColor: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 11,
                  ),
                  Text(
                    " A product description is the marketing copy that explain what a product is and why it's worth purchasing . The purpose of a product description is to supply customer with important information about the feature and benifits of the products so...",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 9),
                  Container(
                    width: size.width * 0.30,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.pink[308],
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white)),
                    child: Center(
                      child: InkWell(
                        onTap: () {},
                        child: Text(
                          "ADD TO CART",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
