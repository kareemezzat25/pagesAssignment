import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pagesassignment/page2/emtion.dart';
import 'package:pagesassignment/page2/emtionmodel.dart';
import 'package:pagesassignment/page2/excerise.dart';
import 'package:pagesassignment/page2/excerisemodel.dart';
import 'package:pagesassignment/page2/feature.dart';
import 'package:pagesassignment/page2/featuremodel.dart';

class Moody extends StatelessWidget {
  List<FeatureModel> features = [
    FeatureModel(
        image: "assets/Walking the Dog.png",
        title: "Positive vibes",
        description: "Boost your mood with positive vibes",
        time: "10 mins"),
  ];
  Moody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 32),
          child: Image.asset(
            "assets/logo.png",
            width: 40,
            height: 40,
          ),
        ),
        titleSpacing: 8,
        title: Text("Moody",
            style: GoogleFonts.lora(fontWeight: FontWeight.w400, fontSize: 24)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 32.0),
            child: Image.asset("assets/bell-02.png"),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 24,
              ),
              RichText(
                text: TextSpan(
                    text: "Hello,",
                    style: GoogleFonts.inter(
                        color: Color(0xFF371B34),
                        fontWeight: FontWeight.w400,
                        fontSize: 20),
                    children: [
                      TextSpan(
                        text: " Sara Rose",
                        style: GoogleFonts.inter(
                            color: Color(0xFF371B34),
                            fontWeight: FontWeight.w600,
                            fontSize: 20),
                      )
                    ]),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "How are you feeling today ?",
                style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF371B34)),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  EmotionAvater(
                      emotion:
                          Emotion(image: "assets/Frame.png", text: "Love")),
                  EmotionAvater(
                      emotion:
                          Emotion(image: "assets/Frame(1).png", text: "Cool")),
                  EmotionAvater(
                      emotion:
                          Emotion(image: "assets/Frame(2).png", text: "Happy")),
                  EmotionAvater(
                      emotion:
                          Emotion(image: "assets/Frame(3).png", text: "Sad"))
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Feature",
                    style: GoogleFonts.inter(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  ),
                  Text(
                    "see more >",
                    style: GoogleFonts.inter(
                        color: Color(0xFF027A48),
                        fontWeight: FontWeight.w600,
                        fontSize: 14),
                  )
                ],
              ),
              CarouselSlider.builder(
                itemCount: features.length,
                itemBuilder: (context, index, realIndex) {
                  return Feature(featureModel: features[index]);
                },
                options: CarouselOptions(
                  height: 240,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Excerise",
                    style: GoogleFonts.inter(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  ),
                  Text(
                    "see more >",
                    style: GoogleFonts.inter(
                        color: Color(0xFF027A48),
                        fontWeight: FontWeight.w600,
                        fontSize: 14),
                  )
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Excerise(
                      exceriseModel: ExceriseModel(
                          image: "assets/moodyFrame.png",
                          text: "Relaxation",
                          color: Color(0xFFF9F5FF))),
                  SizedBox(
                    width: 12,
                  ),
                  Excerise(
                      exceriseModel: ExceriseModel(
                          image: "assets/moodyFrame(1).png",
                          text: "Meditation",
                          color: Color(0xFFFDF2FA)))
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Excerise(
                      exceriseModel: ExceriseModel(
                          image: "assets/moodyFrame(2).png",
                          text: "Beathing",
                          color: Color(0xFFFFFAF5))),
                  SizedBox(
                    width: 12,
                  ),
                  Excerise(
                      exceriseModel: ExceriseModel(
                          image: "assets/moodyFrame(3).png",
                          text: "Yoga",
                          color: Color(0xFFF0F9FF))),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey[500],
        selectedItemColor: const Color(0xFF027A48),
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '.',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.grid_view),
            label: '.',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: '.',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '.',
          ),
        ],
      ),
    );
  }
}
