import 'package:flipkart/models/imagelist.dart';
import 'package:flipkart/pages/cart.dart';
import 'package:flipkart/widgets/textformfield.dart';
import 'package:flipkart/widgets/title.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

AppBar MyAppBar(context) => AppBar(
      toolbarHeight: 120,
      clipBehavior: Clip.none,
      title: MyTitle(),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(30),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            height: 40,
            child: MyTextFormField(),
          ),
        ),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              size: 30,
              color: Colors.white,
            )),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.person,
              size: 30,
              color: Colors.white,
            )),
        Stack(
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CartPage();
                }));
              },
              icon: Icon(
                Icons.shopping_cart,
                size: 30,
                color: Colors.white,
              ),
            ),
            Positioned(
              right: 5,
              top: 25,
              child: Consumer<CartAdd>(
                builder: (BuildContext context, cartProvider, child) => Badge(
                  largeSize: 20,
                  textColor: Colors.black,
                  label: Text(cartProvider.itemCount.toString()),
                  backgroundColor: Colors.white,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          width: 20,
        ),
      ],
      backgroundColor: Color(0xFF047BD5),
    );
