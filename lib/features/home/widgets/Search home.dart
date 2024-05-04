
import 'package:flutter/material.dart';

class SearchHomeWidget extends StatelessWidget {
  const SearchHomeWidget ({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {

            },
            child: Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color:Colors.black)
              ),
              child: Text("Search  Here",
                style: TextStyle(
                  color: Colors.brown.withOpacity(0.3),

                ),
              ),
            ),
          ),
        ),

        SizedBox(width: 13,),

        InkWell(
          onTap:  () {

          },
          child: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.pinkAccent.withOpacity(0.3),
                borderRadius: BorderRadius.only(
                    topRight:  Radius.circular(15),
                    topLeft: Radius.circular(15) ,
                    bottomRight:  Radius.circular(15)
                )
            ),
            child: Icon(Icons.search),
          ),
        )
      ],
    );
  }
}
