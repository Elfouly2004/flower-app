import 'package:flower/core/App%20colors.dart';
import 'package:flower/features/buy%20item/Done%20cart.dart';
import 'package:flower/features/milkcheck/model/model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class buybody extends StatefulWidget {
  buybody({required this.index});


  final int index;

  @override
  State<buybody> createState() => _buybodyState();
}

class _buybodyState extends State<buybody> {




  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

      Padding(
        padding: EdgeInsets.all(MediaQuery.sizeOf(context).width * 0.03),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[


              Expanded(
                child: Text("${milkshakes[widget.index].textImage}",style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontFamily: "Pangolin",
                  color: Colors.brown,
                  fontSize: MediaQuery.sizeOf(context).height * 0.03,
                )),
              ),



                Text(
                  "${milkshakes[widget.index].price}} LE",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.brown,
                    fontFamily: "Pangolin",
                      fontSize: MediaQuery.sizeOf(context).height * 0.02,
                    ),

                )
            ]
        ),
      ),

        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.015,
        ),

        Padding(
          padding: EdgeInsets.all(MediaQuery.sizeOf(context).width * 0.02),
          child: Text(
            "There are many variations of passages of Lorem \n Ipsum available, he majority have There are many \n variations of passages of Lorem Ipsum available, \n he majority have",
            style:  TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.brown.withOpacity(0.65),
                fontSize: MediaQuery.sizeOf(context).height * 0.0165,
              ),

          ),
        ),

        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.015,
        ),

        Divider(
          color: Color(0xffF7CCC6),
          indent: 40,
          endIndent:40 ,
          thickness: 2,
        ),

        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.015,
        ),

        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.sizeOf(context).width * 0.3),
               child: Container(
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.all(
                     Radius.circular(
                       MediaQuery.sizeOf(context).width * 0.1,
                     ),
                   ),
                   gradient: LinearGradient(
                     colors: [
                       AppColors.white.withOpacity(1),
                       AppColors.rose.withOpacity(0.8),
                       AppColors.rose.withOpacity(1),
                     ],
                   ),
                 ),child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   GestureDetector(
                     onTap: () {
                      setState(() {
                        if (milkshakes[widget.index].count>0){
                          milkshakes[widget.index].count--;
                        }

                      });
                     },
                     child: Icon(
                       Icons.do_disturb_on_rounded,
                       size: MediaQuery.sizeOf(context).height * 0.05,
                       color: AppColors.brown,
                     ),
                   ),
                   const Spacer(),
                   Text(
                     "${milkshakes[widget.index].count}",
                     style: TextStyle(
                         fontSize: MediaQuery.sizeOf(context).height * 0.025,
                         fontWeight: FontWeight.w500,
                         color: AppColors.brown,

                     ),
                   ),

                   const Spacer(),

                   GestureDetector(
                     onTap: () {
                      setState(() {
                        milkshakes[widget.index].count++;
                      });
                     },
                     child: Icon(
                       Icons.add_circle_outlined,
                       size: MediaQuery.sizeOf(context).height * 0.05,
                       color: AppColors.brown,
                     ),
                   ),
                 ],
               ),







               ),




        ),

        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.1,
        ),

        Padding(
          padding: EdgeInsets.all(MediaQuery.sizeOf(context).width * 0.05),
          child: Container(
            padding: EdgeInsets.all(MediaQuery.sizeOf(context).width * 0.04),
            decoration: BoxDecoration(
              color: AppColors.rose,
              borderRadius: BorderRadius.all(
                Radius.circular(
                  MediaQuery.sizeOf(context).width * 0.03,
                ),
              ),
            ),
            child: Row(
              children: [
                Text(
                  "Selected items (${milkshakes[widget.index].count})",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: AppColors.brown,
                      fontSize: MediaQuery.sizeOf(context).height * 0.02,
                    ),
                ),
                const Spacer(),
                Text(
                  "Total : ${milkshakes[widget.index].count* sweets[widget.index].price} LE",
                  style:  TextStyle(
                      fontWeight: FontWeight.w500,
                      color: AppColors.brown,
                      fontSize: MediaQuery.sizeOf(context).height * 0.02,
                    ),

                ),
              ],
            ),


          ),
        ),

        InkWell(
          onTap: () {

            cart.add(milkshakes[widget.index]);



            showModalBottomSheet(context: context, builder: (c) {
              return   BottomSheetWidget();
            } );

          },
          child: Container(
          width:MediaQuery.sizeOf(context).width * 0.9 ,
            padding: EdgeInsets.all(MediaQuery.sizeOf(context).width * 0.03),
          decoration: BoxDecoration(
             color: AppColors.brown,
          borderRadius: BorderRadius.all(Radius.circular(MediaQuery.sizeOf(context).width * 0.03,),
            ),
           ), child: Center(
           child: Text("Add to card",
           style:  TextStyle(fontWeight: FontWeight.w700,
            color: AppColors.white,
            fontSize: MediaQuery.sizeOf(context).height * 0.023,),

              ),
              ),

              ),
        ),





    ],

    );
  }
}