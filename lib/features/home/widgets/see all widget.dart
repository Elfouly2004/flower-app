import 'package:flower/core/App%20images.dart';
import 'package:flower/features/home/widgets/seeallpage.dart';
import 'package:flutter/material.dart';

class SeeMoreWidget extends StatelessWidget {
  SeeMoreWidget({super.key, required this.title, });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title ,style: TextStyle(fontSize: 20),),


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