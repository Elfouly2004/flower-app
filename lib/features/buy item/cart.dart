import 'package:flower/core/App%20colors.dart';
import 'package:flower/core/App%20images.dart';
import 'package:flower/core/App%20texts.dart';
import 'package:flower/features/home/widgets/home%20body.dart';
import 'package:flower/features/milkcheck/model/model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class Cartpage extends StatefulWidget {
  const Cartpage({super.key,});

  @override
  State<Cartpage> createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
  @override
  Widget build(BuildContext context) {


double getTotalPrice() {
  double totalPrice = 0;
  for (Sweets item in cart) {
    totalPrice += item.price * item.count;
  }
  return totalPrice;
}
int getTotalSelectedItemsCount(){
  int count=0;
  for (Sweets item in cart) {
    count+=item.count;
  }
  return count;
 }

    return Scaffold(
      
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          AppTexts.cart,
          style:  TextStyle(
              fontSize: MediaQuery.sizeOf(context).height * 0.03,
              fontWeight: FontWeight.w500,
              color: Colors.brown,
            ),

        ),
        leading: IconButton(
          onPressed: () {

              Navigator.pop(context, MaterialPageRoute(builder:
              (context) {
                return homebody();
              },));

          },
          icon:  Icon(Icons.arrow_back_ios_outlined),
        ),
        actions: [
          Padding(
            padding:
            EdgeInsets.only(right: MediaQuery.sizeOf(context).width * 0.04),
            child: Image.asset(AppImages.vectr,height: 30,width: 30,),
          ),
        ],
      ),
      
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [

            Divider(
              color: Color(0xffF7CCC6).withOpacity(0.8),
              thickness: 2,
            ),

            Expanded(
              child: ListView.builder(
                itemCount: cart.length,
                itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.9,
                        height: 200,
                        decoration: BoxDecoration(
                          border: Border.all(color:Color(0xffF7CCC6).withOpacity(0.5)),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.cyan,
                          gradient: LinearGradient(
                            colors: [
                              AppColors.rose.withOpacity(0.8),
                              Colors.white.withOpacity(0.9),
                            ],
                          ),
                        ),

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            SizedBox(height:MediaQuery.sizeOf(context).height * 0.02,),

                            Text("${cart[index].textImage}",
                              style: TextStyle(fontSize: 20,
                                fontFamily: "Pangolin",
                                fontWeight: FontWeight.w400,),
                              textAlign: TextAlign.center,),

                            SizedBox(height:MediaQuery.sizeOf(context).height * 0.02),

                            Text("${cart[index].des}.LE",
                              style: TextStyle(fontSize: 15,color: Color(0xff3C312F),
                                fontWeight: FontWeight.w400,),
                              textAlign: TextAlign.start,),

                            SizedBox(height:MediaQuery.sizeOf(context).height * 0.02),

                            Text("price :  ${cart[index].price.round()}.LE",
                              style: TextStyle(
                                color: Color(0xffFF7474),
                                fontSize: 20,
                                fontWeight: FontWeight.w400,),
                              textAlign: TextAlign.center,),

                            Row(
                              children: [
                                Text("Total :",
                                  style: TextStyle(
                                    color: Color(0xffFF7474),
                                    fontSize: 17,
                                    fontWeight: FontWeight.w400,),
                                  textAlign: TextAlign.center,),
                                Text("  ${cart[index].count *cart[index].price}.LE",
                                  style: TextStyle(
                                    color:Colors.brown,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w400,),
                                  textAlign: TextAlign.center,),
                              ],
                            ),



                          ],
                        ),
                      ),

                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (index >= 0 && index < cart.length) {
                              cart.removeAt(index);
                            }
                            });

                           },
                        child: Container(
                          width: 60,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Color(0xffF7CCC6),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(100),

                            ),
                          ),
                          child: Center(child: Icon(Icons.close)),
                          ),
                        ),



                      Positioned(

                        child: Image.asset("${cart[index].image}",
                          width:100 ,
                          height:80 ,
                        ),
                        top:0 ,
                        bottom: MediaQuery.sizeOf(context).height * 0.04,
                        // left: 200,
                        right: MediaQuery.sizeOf(context).height * 0.0,
                      ),

                      Positioned(
                        child:  Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: MediaQuery.sizeOf(context).width * 0.25),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  MediaQuery.sizeOf(context).width * 0.1,
                                ),
                              ),
                              gradient: LinearGradient(
                                colors: [
                                  AppColors.white.withOpacity(1),
                                  AppColors.rose.withOpacity(0.8),
                                  AppColors.rose.withOpacity(1),
                                ],
                              ),
                            ),child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              GestureDetector(
                                onTap: () {
                               if (cart[index].count>0){
                                 cart[index].count--;
                               }

                               setState(() {

                               });
                                },
                                child: Icon(
                                  Icons.do_disturb_on_rounded,
                                  size: MediaQuery.sizeOf(context).height * 0.05,
                                  color: AppColors.brown,
                                ),
                              ),
                              SizedBox(width: 20,),

                              Text(
                                "0${cart[index].count}",
                                style: TextStyle(
                                  fontSize: MediaQuery.sizeOf(context).height * 0.025,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.brown,

                                ),
                              ),

                              SizedBox(width: 20,),

                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    cart[index].count++;
                                  });


                                },
                                child: Icon(
                                  Icons.add_circle_outlined,
                                  size: MediaQuery.sizeOf(context).height * 0.05,
                                  color: AppColors.brown,
                                ),
                              ),
                            ],
                          ),



                          ),
                        ),
                        top: 150,
                        left: 90,
                      ),
                    ],

                  ),
                );
              },
              ),
            ),




            Padding(
              padding: EdgeInsets.all(MediaQuery.sizeOf(context).width * 0.05),
              child: Container(
                padding: EdgeInsets.all(MediaQuery.sizeOf(context).width * 0.04),
                decoration: BoxDecoration(
                  color: AppColors.rose,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      MediaQuery.sizeOf(context).width * 0.03,
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    Text(
                      "Selected items (${getTotalSelectedItemsCount()})",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: AppColors.brown,
                        fontSize: MediaQuery.sizeOf(context).height * 0.02,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "Total : ${getTotalPrice()} LE",
                      style:  TextStyle(
                        fontWeight: FontWeight.w500,
                        color: AppColors.brown,
                        fontSize: MediaQuery.sizeOf(context).height * 0.02,
                      ),

                    ),
                  ],
                ),


              ),
            ),

            InkWell(
              onTap: () {



              },
              child: Container(
                width:MediaQuery.sizeOf(context).width * 0.9 ,
                padding: EdgeInsets.all(MediaQuery.sizeOf(context).width * 0.03),
                decoration: BoxDecoration(
                  color: AppColors.brown,
                  borderRadius: BorderRadius.all(Radius.circular(MediaQuery.sizeOf(context).width * 0.03,),
                  ),
                ), child: Center(
                child: Text("Add to card",
                  style:  TextStyle(fontWeight: FontWeight.w700,
                    color: AppColors.white,
                    fontSize: MediaQuery.sizeOf(context).height * 0.023,),

                ),
              ),

              ),
            ),





          ],
        ),
      ),


    );
  }
}
