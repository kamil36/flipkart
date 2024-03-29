import 'package:flipkart/pages/item.dart';
import 'package:flipkart/models/imagelist.dart';
import 'package:flutter/material.dart';

class MyGridView extends StatelessWidget {
  const MyGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 3000,
      child: GridView.builder(
        // physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: product.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        ),
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Container(
                height: double.infinity,
                child: Image.asset(
                  "${product[index].image}",
                  fit: BoxFit.fill,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ItemPage(
                        index: index,
                      );
                    }));
                  },
                  child: Text("${product[index].title}",
                      style: TextStyle(
                        color: Colors.black,
                      )),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
