import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Login2Page extends StatelessWidget {
  const Login2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Stack(
            children: [
              Positioned(
                right: -100,
                top: -160,
                child: Transform.rotate(
                  angle: -pi / 2,
                  child: MyCircleWidget(
                    radius: 167,
                    colors: [Color(0xffD74286), Color(0xffE991B9)],
                  ),
                ),
              ),
              Positioned(
                left: -100,
                bottom: -190,
                child: Transform.rotate(
                  angle: -pi / 2,
                  child: MyCircleWidget(
                    radius: 167,
                    colors: [Color(0xff4E398B), Color(0xff9C89D9)],
                  ),
                ),
              ),
            ],
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: kColorPink,
                        borderRadius: BorderRadius.circular(50)),
                    child: Icon(
                      Icons.navigate_before,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          'Create Your Account!',
                          style: TextStyle(
                            fontSize: 28,
                            color: Color(0xff7965B6),
                            fontWeight: FontWeight.w700,
                            letterSpacing: 1.2,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Color(0xff7965B6),
                            borderRadius: BorderRadius.circular(50)),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Email adrress",
                      hintStyle: TextStyle(
                        fontSize: 17.0,
                        color: Colors.black.withOpacity(0.4),
                      ),
                      prefixIcon: Icon(
                        Icons.email,
                        color: Color(0xff9C89D9),
                      ),
                      filled: false,
                      fillColor: Color(0xff25283A),
                      enabled: true,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff9C89D9),
                          width: 1.5,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff9C89D9),
                          width: 1.5,
                        ),
                      ),
                      disabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff9C89D9),
                          width: 1.5,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Passwood",
                      hintStyle: TextStyle(
                        fontSize: 17.0,
                        color: Colors.black.withOpacity(0.4),
                      ),
                      prefixIcon: Icon(
                        Icons.lock_rounded,
                        color: Color(0xff9C89D9),
                      ),
                      suffixIcon: Icon(
                        Icons.remove_red_eye_sharp,
                        color: Color(0xff9C89D9),
                      ),
                      filled: false,
                      fillColor: Color(0xff25283A),
                      enabled: true,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff9C89D9),
                          width: 1.5,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff9C89D9),
                          width: 1.5,
                        ),
                      ),
                      disabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff9C89D9),
                          width: 1.5,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),

                  ElevatedButton(


                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: kColorPink,



                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Container(

                      margin: const EdgeInsets.symmetric(vertical: 14),
                      alignment: Alignment.center,
                      width: double.infinity,
                      child: Text(
                        'Create Account',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyCircleWidget extends StatelessWidget {
  double radius;
  List<Color> colors;
  MyCircleWidget({required this.radius, required this.colors});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius * 2,
      height: radius * 2,
      decoration: BoxDecoration(
        color: kColorPink,
        shape: BoxShape.circle,
        //borderRadius: BorderRadius.circular(200.0),
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: colors,
        ),
        boxShadow: [
          BoxShadow(
              color: colors[0].withOpacity(0.7),
              blurRadius: 12,
              offset: const Offset(2, 2)),
        ],
      ),
    );
  }
}
