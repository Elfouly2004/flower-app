import 'package:flower/core/App%20images.dart';
import 'package:flower/features/buy%20item/cart.dart';
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

      drawer:  Drawer(
        width: 300,
        
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            SizedBox(height: 100,),


            InkWell(
              onTap: () {
             Navigator.push(context, MaterialPageRoute(builder: (context) {
               return Cartpage();
             },));
              },
              child: Center(
                child: Row(

                  children: [

                    Icon(
                      Icons.shopping_cart,color: Colors.black,
                      size: 50,

                    ),

                    Text(" Cart",style: TextStyle(fontSize: 30),)

                  ],

                ),
              ),
            ),
          ],
        ),
        
      ),

      // backgroundColor:Colors.white,

       body:homebody(),
    );
  }
}

