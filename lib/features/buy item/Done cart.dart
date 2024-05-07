
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';


class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,

      child: ZoomIn(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(

                child:Image.asset('assets/images/8683794.png',height: MediaQuery.sizeOf(context). height * 0.4,width: MediaQuery.sizeOf(context).width * 0.8)),
            
            Center(child: Text("Done",style: TextStyle(fontSize: 50,fontWeight: FontWeight.w400),))
          ],
        ),
      ),
    );
  }
}