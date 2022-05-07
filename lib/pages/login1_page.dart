import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_codigo5_ui/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login1Page extends StatelessWidget {
  const Login1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorPrimaryLogin,
      body: Stack(
        children: [
          Stack(
            children: [
              Positioned(
                left: 40,
                top: -40,
                child: Transform.rotate(
                  angle: -pi / 3,
                  child: Container(
                    width: 200,
                    height: 60,
                    decoration: BoxDecoration(
                      color: kColorSecondaryLogin,
                      borderRadius: BorderRadius.circular(13.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 60.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        color: kColorSecondaryLogin.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(50)),
                    child: Icon(
                      Icons.home_outlined,
                      color: kColorSecondaryLogin,
                      size: 28,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Let'slog you in",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Welcome back You´ve been missed!",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.4),
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xffEA4335),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          icon: SvgPicture.asset(
                            'assets/icons/bx-google.svg',
                            color: Colors.white,
                            height: 18,
                          ),
                          label: Container(
                            margin: const EdgeInsets.symmetric(vertical: 14),
                            child: Text(
                              'Google',
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 18,
                      ),
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xff1877F2),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          icon: SvgPicture.asset(
                            'assets/icons/bx-facebook.svg',
                            color: Colors.white,
                            height: 18,
                          ),
                          label: Container(
                            margin: const EdgeInsets.symmetric(vertical: 14),
                            child: Text(
                              'Facebook',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     Container(
                  //       padding: const EdgeInsets.symmetric(
                  //         horizontal: 35,
                  //         vertical: 10,
                  //       ),
                  //       decoration: BoxDecoration(
                  //         color: Colors.redAccent,
                  //         borderRadius: BorderRadius.circular(7),
                  //       ),
                  //       child: Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         children: [
                  //           SvgPicture.asset(
                  //             'assets/icons/bx-google.svg',
                  //             color: Colors.white,
                  //             height: 18,
                  //           ),
                  //           const SizedBox(
                  //             width: 10,
                  //           ),
                  //           Text(
                  //             'Google',
                  //             style: TextStyle(
                  //               color: Colors.white,
                  //               fontSize: 16,
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //     Container(
                  //       padding: const EdgeInsets.symmetric(
                  //         horizontal: 35,
                  //         vertical: 10,
                  //       ),
                  //       decoration: BoxDecoration(
                  //         color: Colors.blue,
                  //         borderRadius: BorderRadius.circular(7),
                  //       ),
                  //       child: Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         children: [
                  //           SvgPicture.asset(
                  //             'assets/icons/bx-facebook.svg',
                  //             color: Colors.white,
                  //             height: 18,
                  //           ),
                  //           const SizedBox(
                  //             width: 10,
                  //           ),
                  //           Text(
                  //             'facebook',
                  //             style: TextStyle(
                  //               color: Colors.white,
                  //               fontSize: 16,
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Username",
                      hintStyle: TextStyle(
                        fontSize: 17.0,
                        color: Colors.white.withOpacity(0.5),
                      ),
                      filled: true,
                      fillColor: Color(0xff25283A),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10.0)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Username",
                      hintStyle: TextStyle(
                        fontSize: 17.0,
                        color: Colors.white.withOpacity(0.5),
                      ),
                      filled: true,
                      fillColor: Color(0xff25283A),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10.0)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Username",
                      hintStyle: TextStyle(
                        fontSize: 17.0,
                        color: Colors.white.withOpacity(0.5),
                      ),
                      filled: true,
                      fillColor: Color(0xff25283A),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10.0)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),

                  ElevatedButton(

                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: kColorSecondaryLogin,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Container(

                      margin: const EdgeInsets.symmetric(vertical: 14),
                      alignment: Alignment.center,
                      width: double.infinity,
                      child: Text(
                        'Sign Up',
                      ),
                    ),
                  ),

                  // Container(
                  //   padding: const EdgeInsets.symmetric(
                  //     horizontal: 35,
                  //     vertical: 15,
                  //   ),
                  //   width: double.infinity,
                  //   decoration: BoxDecoration(
                  //     color: kColorSecondaryLogin,
                  //     borderRadius: BorderRadius.circular(7),
                  //   ),
                  //   child: Center(
                  //     child: Text(
                  //       'Sign Up',
                  //       style: TextStyle(
                  //         color: Colors.white,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Dont Have on Account?',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.4),
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Text(
                        'Sign in',
                        style: TextStyle(
                          color: Colors.blue,
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
    );
  }
}
