import 'package:flower/core/App%20images.dart';
import 'package:flower/core/App%20texts.dart';
import 'package:flutter/material.dart';

class SweetWidget extends StatefulWidget {


  @override
  State<SweetWidget> createState() => _SweetWidgetState();
}

class _SweetWidgetState extends State<SweetWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width * 0.4,
            height: MediaQuery.sizeOf(context).height * 0.21,
            decoration: BoxDecoration(
              color: Colors. pink.withOpacity(0.25),
              borderRadius: BorderRadius.all(
                Radius.circular(MediaQuery.sizeOf(context).width * 0.03),
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.011,
                ),
                SizedBox(
                  child: Image.asset(
                    AppImages.Cake,
                    width: MediaQuery.sizeOf(context).width * 0.3,
                    height: MediaQuery.sizeOf(context).height * 0.089,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(
                        MediaQuery.sizeOf(context).width * 0.03,
                      ),
                      bottomRight: Radius.circular(
                        MediaQuery.sizeOf(context).width * 0.03,
                      ),
                    ),
                  ),
                  height: MediaQuery.sizeOf(context).height * 0.107,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.sizeOf(context).width * 0.03,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.01,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                           ""
                             , style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.brown,
                                fontSize:
                                MediaQuery.sizeOf(context).height * 0.016,
                              ),

                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.01,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            AppTexts.Cake,
                            style: TextStyle(
                              fontSize:
                              MediaQuery.sizeOf(context).height * 0.015,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.02,
                        ),
                        Row(
                          children: [
                            Text(
                              "",
                              style:TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.brown,
                                  fontSize:
                                  MediaQuery.sizeOf(context).height * 0.023,
                                ),

                            ),
                            const Spacer(),
                            InkWell(
                              onTap: () {},
                              child: Container(
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
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: MediaQuery.sizeOf(context).width * 0.007,
            top: MediaQuery.sizeOf(context).height * 0.003,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_border_outlined,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}