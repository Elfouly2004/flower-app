import 'package:flower/core/App%20images.dart';
import 'package:flower/features/home/Model/listhome.dart';
import 'package:flower/features/home/widgets/bestselling%20stack.dart';
import 'package:flower/features/home/widgets/home%20body.dart';
import 'package:flutter/material.dart';

class Bestselling extends StatefulWidget {
  const Bestselling({super.key,});


  @override
  State<Bestselling> createState() => _BestsellingState();
}

class _BestsellingState extends State<Bestselling> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [

            SizedBox(height: 30,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
                IconButton(
                  iconSize: 20,
                  icon: const Icon(Icons.arrow_back_ios),
                  onPressed: () {
                    Navigator.pop(context, MaterialPageRoute(builder: (context) {
                      return homebody();
                    },));
                  },
                ),

                Text("Best selling",
                  style: TextStyle(
                      fontSize: 15, 
                      fontWeight: FontWeight.w400,
                     color: Color(0xff3C312F)
                    
                  ),
                ),
                
                Image(
                  image: AssetImage("assets/images/Vector (1).png"),
                  height:25 ,
                  width:25 ,
                ),

            ],
            ),

            SizedBox(height: 20,),

            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 0,
                  crossAxisSpacing: 0,
                ),// padding around the grid
                itemCount: sweets.length,
                itemBuilder: (context, index) {
                  return bstseelin(index: index);
                },
              ),
            ),
          ],
        ),
      ) ,

    );
  }
}
