import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../Model/listhome.dart';


class bstseelin extends StatefulWidget {
  const bstseelin({super.key,required this.index});
  final index;

  @override
  State<bstseelin> createState() => _bstseelinState();
}

class _bstseelinState extends State<bstseelin> {
  @override
  Widget build(BuildContext context) {
    return Stack(
alignment: Alignment.bottomRight,
      children: [
        Container(
          alignment:  Alignment.center,
          height:MediaQuery.sizeOf(context).height * 0.2,
          width: MediaQuery.sizeOf(context).width * 0.4,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xffF7CCC6).withOpacity(0.25), Colors.white,],
              begin:Alignment.topCenter,
              end:Alignment.bottomCenter,
              stops: [0.55,0.45],),

            borderRadius: BorderRadius.all(
              Radius.circular(MediaQuery.sizeOf(context).width * 0.03),),
            border: Border.all(color: Color(0xffF7CCC6),),
            color: Colors.white,),

          child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5,),

              Image(
                image: AssetImage(sweets[widget.index].image),
                height:MediaQuery.sizeOf(context).height * 0.1,
                width: MediaQuery.sizeOf(context).height * 0.3,
              ),

              SizedBox(height: 10,),


              Text("${sweets[widget.index].textImage}",
                style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),

              SizedBox(height: 10,),

              Text("${sweets[widget.index].price}.LE",
                style: TextStyle(fontSize: 10,
                    fontWeight: FontWeight.w500),
              ),


            ],
          ),
        ),



        Positioned(
          child: GestureDetector(
            onTap: () {
              setState(() {
                sweets[widget.index].fav = !sweets[widget.index].fav;
              });
            },
            child: CircleAvatar(
              radius:15,
              backgroundColor: Colors.white,
              child:  Icon(
                  sweets[widget.index].fav == true?
                  Icons.favorite :Icons.favorite_border, color: Colors.black,),

            ),
          ),
          top: 5,
          left: 150,

        ),



        InkWell(
          onTap: () {

          },
          child: Container(
            height:29 ,
            width: 29,
            decoration: BoxDecoration(
              color: Colors.brown,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(
                  MediaQuery.sizeOf(context).width * 0.03,
                ),
              ),
            ),
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        )






      ],
    );
  }
}