import 'package:flower/core/App%20images.dart';
import 'package:flower/features/home/widgets/home%20body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class Customhomescreen extends StatefulWidget {
  const Customhomescreen({super.key});

  @override
  State<Customhomescreen> createState() => _CustomhomescreenState();
}

class _CustomhomescreenState extends State<Customhomescreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        centerTitle: true,
        title: Image.asset(
          AppImages.Icon,
          width: 80,
          height: 50,
        ),
        actions: [
          IconButton(
            onPressed:  ( ) {} ,
            icon: Icon(Icons.shopping_cart_outlined),
          )
        ],
      ),

      drawer:  Drawer(),

      // backgroundColor:Colors.white,

       body:homebody(),
    );
  }
}

