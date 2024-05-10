
import 'package:flower/features/buy%20item/body.dart';
import 'package:flower/features/milkcheck/model/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class buyitem extends StatelessWidget {

  buyitem(
      {required this.index});

  final int index;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Color(0xffF7CCC6),
      body: CustomScrollView(
        physics: NeverScrollableScrollPhysics(),
        slivers: <Widget>[

          SliverAppBar(

             backgroundColor: Color(0xffF7CCC6),
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('', textScaleFactor: 1),
               background: Image(image: AssetImage(milkshakes[index].image)),


            ),
          ),

          // SliverToBoxAdapter()

          SliverFillRemaining(
            child: Container(
              height:   700,
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(MediaQuery.sizeOf(context).width * 0.09),
                  topRight: Radius.circular(MediaQuery.sizeOf(context).width * 0.09),
                ),
              ),
              child: Column(
                children: [
                  buybody(index: index,)
                ],
              ),

            ),
          ),


        ],
      ),
    );
  }
}
