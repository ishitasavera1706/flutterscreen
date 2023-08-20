
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Welcomescreen extends StatelessWidget {
  const Welcomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child:Stack(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/1.6,
                  decoration: BoxDecoration(
                      color: Colors.white
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/1.6,
                  decoration: BoxDecoration(
                    color:Colors.redAccent,
                    borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(150)),
                  ),
                  child: Center(
                      child: Image.asset(
                        "assets/home.png",
                        scale: 0.8,
                        height: 250,
                        width: 250,

                      ),

                  ),

                )
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2.66,
                decoration: BoxDecoration(
                    color: Colors.redAccent,
                ),

              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2.66,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(150),)
                ),
                child: Column(
                  children: [
                    Text("Welcome...",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                        wordSpacing: 2,
                      ),
                    ),

                    SizedBox(height: 15,),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Text("If shopping doesn't make you happy, then you're in the wrong shop.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.black.withOpacity(0.6)
                        ),
                      ),
                    ),
                    SizedBox(height: 60),
                    Material(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        onTap:(){} ,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 15,horizontal: 80),
                          child: Text(
                            "Get Start",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),

              ),
            ),
          ],
        ) ,
      ),
    );
  }
}
