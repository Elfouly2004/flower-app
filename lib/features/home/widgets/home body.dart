import 'package:flower/core/App%20images.dart';
import 'package:flower/features/home/widgets/Search%20home.dart';
import 'package:flower/features/home/widgets/bestselling%20stack.dart';
import 'package:flower/features/home/widgets/discover%20listveiw.dart';
import 'package:flower/features/home/widgets/see%20all%20widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class homebody extends StatefulWidget {
  const homebody({super.key,});



  @override
  State<homebody> createState() => _homebodyState();
}

class _homebodyState extends State<homebody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [



            Stack(
              children: [

                Wrap(
                  children: [
                    Image(image: AssetImage("${AppImages.banner}"),)
                  ],
                ),


                Text(
                  "Choose What Suits \n Your Test",
                  style: TextStyle(
                    color: Color(0xff3C312F,),
                    fontSize: 18,
                    fontFamily: "Pangolin",
                  ),
                ),

              ],

            ),


            SearchHomeWidget(),


            SeeMoreWidget(),


            Discoverwidget(),


            SeeMoreWidget(),



            Expanded(

              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),// padding around the grid
                itemCount: 4,
                itemBuilder: (context, index) {
                  return bstseelin(index: index);

                },


              ),
            )






          ],
        ),
      ),


    );
  }
}
