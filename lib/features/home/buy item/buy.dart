import 'package:flower/features/home/buy%20item/body.dart';
import 'package:flutter/material.dart';

class buyitem extends StatelessWidget {

  buyitem(
      {
        required this.title,
        required this.price,
        required this.image,
        required this.description,
      }
      );

  final String title;
  final String image;
  double price;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: CustomScrollView(
        slivers: <Widget>[

          SliverAppBar(
             backgroundColor: Color(0xffF7CCC6),
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('', textScaleFactor: 1),
               background: Image(image: AssetImage(image)),


            ),
          ),

          SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(MediaQuery.sizeOf(context).width * 0.12),
                  topRight: Radius.circular(MediaQuery.sizeOf(context).width * 0.12),
                ),
              ),
              child: Column(
                children: [

                  buybody(title: title, price: price, image: image, description: description)
                ],
              ),

            ),
          ),


        ],
      ),
    );
  }
}
