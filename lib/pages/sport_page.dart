import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class SportPage extends StatelessWidget {
  const SportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height);
    print(MediaQuery.of(context).size.width);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu),
                    Icon(Icons.notifications_none),
                  ],
                ),
                const SizedBox(
                  height: 24.0,
                ),
                Text(
                  'Hello Jose',
                  style: GoogleFonts.poppins(),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Text(
                  'Welcome back!',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Container(
                    width: double.infinity,
                    height: 240,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://images.pexels.com/photos/1386602/pexels-photo-1386602.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                  colors: [
                                Colors.black.withOpacity(0.8),
                                Colors.transparent
                              ])),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                                maxLines: 2,
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xffFE006F),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                                child: Text("Registrate Ahora"),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Kategori Olahraga",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                      ),
                    ),
                    Text(
                      "Lihat Semua",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          decoration: TextDecoration.underline),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16.0,
                ),
                GridView.count(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  childAspectRatio: 2.5,
                  children: [
                    ItemGridWedget(
                        text: "Swimming", image: "assets/images/img1.png"),
                    ItemGridWedget(
                        text: "Basquetball", image: "assets/images/img2.png"),
                    ItemGridWedget(
                        text: "Futball", image: "assets/images/img3.png"),
                    ItemGridWedget(
                        text: "Boxing", image: "assets/images/img4.png"),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Booking terfarvory",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                      ),
                    ),
                    Text(
                      "Lihat Semua",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          decoration: TextDecoration.underline),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16.0,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  child: Row(
                    children: [
                      Slider(),
                      Slider(),
                      Slider(),
                      Slider(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Slider extends StatelessWidget {
  const Slider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: const EdgeInsets.only(right: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.camera,
                      size: 16,
                    ),
                    const SizedBox(
                      width: 7.0,
                    ),
                    Text(
                      "You  Sehat bersamat!",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.montserrat(
                          color: kColorPrimaryParking,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 16,
                      color: Colors.black.withOpacity(0.3),
                    ),
                    const SizedBox(
                      width: 7.0,
                    ),
                    Expanded(
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.montserrat(
                            color: Colors.black.withOpacity(0.3),
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ItemGridWedget extends StatelessWidget {
  String image;
  String text;
  ItemGridWedget({required this.text, required this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.06),
              blurRadius: 10,
              offset: const Offset(4, 4)),
        ],
      ),
      child: Row(
        children: [
          Image.asset(
            image,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}
