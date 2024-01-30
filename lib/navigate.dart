import 'package:flutter/material.dart';

class Checking extends StatelessWidget {
  const Checking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar( 
        backgroundColor: Colors.amberAccent,
      ),
      backgroundColor: Colors.amberAccent,
      body: Center(
          child: Text("Cheking Page",
              style: Theme.of(context).textTheme.headlineLarge)),
    );
  }
}
