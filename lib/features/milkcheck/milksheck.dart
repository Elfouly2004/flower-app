
import 'package:flower/core/App%20colors.dart';
import 'package:flower/features/buy%20item/buy.dart';

import 'package:flower/features/home/widgets/home%20body.dart';
import 'package:flower/features/milkcheck/model/model.dart';
import 'package:flutter/material.dart';
class lstmilksheck extends StatefulWidget {
  const lstmilksheck({super.key});

  @override
  State<lstmilksheck> createState() => _lstmilksheckState();
}

class _lstmilksheckState extends State<lstmilksheck> {
  List<Sweets>searchlist=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
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

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 285,
                height: 44,
                child: TextFormField(
                  onChanged: (value) {


                      setState(() {
                        searchlist = milkshakes.where((element) => element. textImage.toLowerCase().contains(value.toLowerCase())).toList();

                      });

                  },
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      // borderSide: BorderSide(color: Colors.white,),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)
                    ),
                    hintText: "Search here",
                    hintStyle: TextStyle(color: Colors.grey,fontSize: 13),

                  ),
                ),
              ),


              CircleAvatar(
                child: ClipOval(
                  child: Icon(Icons.search),
                ),
                backgroundColor:Color(0xffF7CCC6) ,
                radius: 30,

              )


            ],
          ),

          Expanded(
              flex:1 ,
              child: Padding(
                padding: const EdgeInsets.all(00),
                child: ListView.builder(
                  itemCount: searchlist.isEmpty ?  milkshakes.length :searchlist.length,
                  itemBuilder: (context, index) {

                    return Padding(

                      padding: const EdgeInsets.all(20),
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return buyitem(
                               index: index,
                                title: milkshakes[index].textImage,
                                price: milkshakes[index].price,
                                image: milkshakes[index].image,
                                description: milkshakes[index].des);
                            },));
                            },
                            child: Container(
                                height:150 ,
                                width: 400,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xffF7CCC6)),
                                  gradient: LinearGradient(
                                      colors: [
                                        AppColors.rose.withOpacity(0.3),
                                        AppColors.rose.withOpacity(0),
                                      ],
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),

                                child:Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                   SizedBox(height: 10,),

                                     Text(searchlist.isEmpty ?  milkshakes[index].textImage: searchlist[index].textImage,
                                       style: TextStyle(fontSize: 20,
                                         fontFamily: "Pangolin",
                                         fontWeight: FontWeight.w400,),
                                       textAlign: TextAlign.center,),

                                    SizedBox(height: 10,),

                                    Text("${milkshakes[index].des}.LE",
                                      style: TextStyle(fontSize: 15,color: Color(0xff3C312F),
                                        fontWeight: FontWeight.w400,),
                                      textAlign: TextAlign.start,),

                                    SizedBox(height: 10,),

                                    Text("${milkshakes[index].price}.LE",
                                      style: TextStyle(fontSize: 20,
                                        fontWeight: FontWeight.w400,),
                                      textAlign: TextAlign.center,),




                                  ],
                                ),

                            ),
                          ),

                          Positioned(

                              child: Image.asset("${milkshakes[index].image}",
                                width:100 ,
                                height:200 ,
                              ),
                             top:0 ,
                            bottom: MediaQuery.sizeOf(context).height * 0.03,
                            // left: 200,
                            right: MediaQuery.sizeOf(context).height * 0.0,
                          ),


                          InkWell(
                            onTap: () {

                            },
                            child: Container(
                              height:29 ,
                              width: 29,
                              decoration: BoxDecoration(
                                color: Colors.brown,
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(
                                    MediaQuery.sizeOf(context).width * 0.03,
                                  ),
                                ),
                              ),
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          )


                        ],
                      ),
                    );




                  },
                ),
              )
          ),
        ],
      ),


    );
  }
}
