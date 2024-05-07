import 'package:flower/features/Slider/model&veiw%20slider/slider%20model.dart';
import 'package:flower/features/home/home%20screen.dart';
import 'package:flower/features/home/widgets/home%20body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class Sliderpage extends StatefulWidget{
  @override
  State<Sliderpage> createState() => _SliderpageState();


}

class _SliderpageState extends State<Sliderpage> {

  final _controller=PageController();
  @override
  Widget build(BuildContext context){

    return Scaffold(


      body: Column(
        children: [
          Expanded(
            flex: 7,
            child: PageView.builder(
              itemCount: sliders.length,
              controller:_controller,
              itemBuilder: (BuildContext context, int index) {

                return Container(
                  constraints: BoxConstraints.expand(),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(sliders[index].backgroundImage),
                        fit: BoxFit.cover,
                      )
                  ),

                  //You can use any widget
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      SizedBox(height:MediaQuery.of(context).size.height*0.2,),

                      Center(
                        child: Image(image: AssetImage(sliders[index].image),
                          width:MediaQuery.of(context).size.width*0.7 ,
                          height:MediaQuery.of(context).size.height*0.3 ,
                        ),),

                      SizedBox(height:MediaQuery.of(context).size.height*0.09,),

                      Text(
                        sliders[index].title,
                        style: TextStyle(color:Color(0xff3C312F),fontSize: 24,
                          fontWeight: FontWeight.w400,
                          fontFamily: "RockSalt"),
                        textAlign: TextAlign.center,
                      ),

                      SizedBox(height:MediaQuery.of(context).size.height*0.04,),


                      Text(
                        sliders[index].desc,
                        style:TextStyle(
                        color: Color(0xff3C312F),
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),textAlign: TextAlign.center,),

                      SizedBox(height:MediaQuery.of(context).size.height*0.06,),

                      InkWell(
                        onTap: () {

                          if(index== sliders.length-1){

                            Navigator.push(context, MaterialPageRoute(builder:(context) {
                              return Customhomescreen();
                            },));
                          }
                          else{
                            _controller.animateToPage(index+1, duration: Duration(
                              milliseconds: 300
                            ), curve: Curves.ease);

                          }


                        },
                        child: Container(
                          width:262 ,
                          height:44 ,
                          decoration: BoxDecoration(
                            color: Color(0xff3C312F),
                            borderRadius:BorderRadius.only(
                                bottomRight:Radius.circular(60),
                                bottomLeft:Radius.circular(4) ,
                                topLeft: Radius.circular(60),
                                topRight:Radius.circular(4)
                            ),
                          ),
                          child: Center(
                              child: Text(sliders[index].buttonText,
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          )
                          ),
                        ),
                      ),

                    ],
                  ),
                );
              } ,

            ),
          ),

          Expanded(
            child: SmoothPageIndicator(
                controller:_controller ,  // PageController
                count:  3,
                textDirection: TextDirection.ltr,
                effect:ExpandingDotsEffect(
                  activeDotColor: Colors.brown,
                ), // your preferred effect
                onDotClicked: (index){}
            ),
          )



        ],
      ),
    );
  }
}