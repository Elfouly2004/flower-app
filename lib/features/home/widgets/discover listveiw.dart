import 'package:flower/core/App%20colors.dart';
import 'package:flower/features/home/Model/listhome.dart';
import 'package:flower/features/milkcheck/milksheck.dart';
import 'package:flutter/material.dart';


class Discoverwidget extends StatelessWidget {
  const Discoverwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      child: Expanded(
          flex:1 ,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount:juices.length,
            itemBuilder: (context, index) {
              return Container(

                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          AppColors.rose.withOpacity(0.6),
                          AppColors.rose.withOpacity(0),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter
                    ),
                    color: AppColors.rose,
                    shape: BoxShape.circle
                ),
                child: InkWell(
                  onTap: () {
                    if(index==0){
                      Navigator.push(context,MaterialPageRoute(builder: (context) {
                        return lstmilksheck();
                      },));
                    }
                  },
                  child: Column(
                    children: [
                      Image.asset("${juices[index].image}",height: 80,width: 60,),

                      Padding(
                        padding: const EdgeInsets.only(right: 20,left:20 ),
                        child: Text("${juices[index].textImage}",
                          style: TextStyle(fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      )
                      ,

                    ],
                  ),
                ),
              );
            },
          )
      ),
    );
  }
}
