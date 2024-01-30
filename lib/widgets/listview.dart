import 'package:flipkart/models/imagelist.dart';
import 'package:flipkart/navigate.dart';
import 'package:flipkart/pages/top_item.dart';
import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: Product.trending.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return TopItemPage(
                        index: index,
                      );
                    }));
                  },
                  child: Container(
                      height: 70,
                      child: Image.asset(
                        "${Product.trending[index].image}",
                        fit: BoxFit.cover,
                      )),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Checking();
                  }));
                },
                child: Container(
                    child: Text(
                  "${Product.trending[index].title}",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                )),
              ),
            ],
          );
        });
  }
}
