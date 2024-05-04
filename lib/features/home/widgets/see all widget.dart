import 'package:flower/core/App%20images.dart';
import 'package:flower/features/home/widgets/seeallpage.dart';
import 'package:flutter/material.dart';

class SeeMoreWidget extends StatelessWidget {
  const SeeMoreWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Discover by category" ,style: TextStyle(fontSize: 20),),


          TextButton(
              onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) {
                     return Bestselling();
                   },));
              },
              child: Image(image:AssetImage(AppImages.seeall),height: 15,width:70 ,)),


        ],
      ),
    );
  }
}