import 'package:flipkart/pages/cart.dart';
import 'package:flutter/material.dart';

class MySliverAppBar extends StatelessWidget {
  const MySliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      toolbarHeight: 200,
      clipBehavior: Clip.none,
      title: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          children: [
            // Container(
            //   height: 40,
            //   child: TextFormField(
            //     autocorrect: true,
            //     autofocus: false,
            //     cursorColor: Colors.black,
            //     cursorHeight: 15,
            //     decoration: InputDecoration(
            //       filled: true,
            //       fillColor: Color.fromARGB(255, 255, 255, 255),
            //       hintText: "   Search what do you want to study",
            //       hintStyle: TextStyle(
            //         fontWeight: FontWeight.w800,
            //         color: Colors.black,
            //       ),
            //       border: OutlineInputBorder(
            //           borderRadius: BorderRadius.all(
            //             Radius.circular(20),
            //           ),
            //           borderSide: BorderSide(color: Colors.black)),
            //       enabledBorder: OutlineInputBorder(
            //         borderRadius: BorderRadius.all(
            //           Radius.circular(20),
            //         ),
            //         borderSide: BorderSide(color: Colors.white),
            //       ),
            //       errorBorder: OutlineInputBorder(
            //         borderRadius: BorderRadius.all(
            //           Radius.circular(20),
            //         ),
            //         borderSide: BorderSide(color: Colors.red),
            //       ),
            //       focusedBorder: OutlineInputBorder(
            //         borderRadius: BorderRadius.all(
            //           Radius.circular(20),
            //         ),
            //         borderSide: BorderSide(color: Colors.black),
            //       ),
            //       prefixIcon: Container(
            //           decoration: BoxDecoration(
            //               color: Color.fromARGB(224, 224, 224, 255),
            //               borderRadius: BorderRadius.only(
            //                 topLeft: Radius.circular(20),
            //                 bottomLeft: Radius.circular(20),
            //               )),
            //           child: IconButton(
            //             iconSize: 30,
            //             onPressed: () {},
            //             icon: Icon(Icons.search),
            //           )),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              color: Colors.white,
            )),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.person,
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
                  color: Colors.white,
                )),
            Positioned(
              right: 5,
              top: 25,
              child: CircleAvatar(
                child: Text(
                  "5",
                  style: TextStyle(color: Color(0xFF047BD5)),
                ),
                radius: 8,
                backgroundColor: Colors.white,
              ),
            ),
          ],
        ),
        SizedBox(
          width: 20,
        ),
      ],
      backgroundColor: Color(0xFF047BD5),
      leading: Builder(builder: (context) {
        return Row(
          children: [
            IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(
                  Icons.menu,
                  color: Colors.white,
                )),
            Column(children: [
              SizedBox(
                height: 10,
              ),
              Text(
                "Flipkart",
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Text(
                    "Explore  ",
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Plus",
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Color(0xFFF8E831),
                        fontSize: 10,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ]),
          ],
        );
      }),
      leadingWidth: 200,
      bottom: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: Container(
            height: 100,
            color: Colors.red,
          )),
    );
  }
}
