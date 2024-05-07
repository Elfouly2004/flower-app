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
        backgroundColor: Color(0xffF7CCC6),
        width: 300,
        
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(height:  MediaQuery.sizeOf(context).height * 0.07,),


            Center(
              child: CircleAvatar(
                child:Image(image: AssetImage("assets/images/PicsArt_05-07-05.04.18.png"),),
                radius: 100,
              ),
            ),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.02,),
            Text("Abdelrahman montaser",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),

            Row(

              children: [
                Icon(
                  Icons.phone_android_outlined,color: Colors.black,
                  size: 30,

                ),

                Text("01275835070",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
              ],
            ),
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.01,),
            InkWell(
              onTap: () => (Uri.parse('https://www.linkedin.com/in/abdelrahman-montaser-839600280/')),
              child: Text(
                'linkedin',
                style: TextStyle(decoration: TextDecoration.underline, color: Colors.black87,fontSize: 30),
              ),
            ),

            SizedBox(height:  MediaQuery.sizeOf(context).height * 0.02,),


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
                      size: 30,

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

