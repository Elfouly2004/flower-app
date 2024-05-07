import 'package:flower/core/App%20colors.dart';
import 'package:flower/features/home/Model/listhome.dart';
import 'package:flower/features/milkcheck/milksheck.dart';
import 'package:flutter/material.dart';


class Discoverwidget extends StatelessWidget {
  const Discoverwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount:juices.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: GestureDetector(
              onTap: () {
                if(index==0){
                  Navigator.push(context,MaterialPageRoute(builder: (context) {
                    return lstmilksheck();
                  },));
                }
              },
      
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.sizeOf(context).height * 0.1,
                    width: MediaQuery.sizeOf(context).width * 0.2,
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
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),

                      child: Image.asset("${juices[index].image}",
                        height: MediaQuery.sizeOf(context).height * 0.09,),
                    ),

                  ),
                  Text("${juices[index].textImage}",
                    style: TextStyle(fontSize: 14,
                      fontWeight: FontWeight.w500,

                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
