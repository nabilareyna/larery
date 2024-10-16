import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:larery/components/widget/w_activitycard.dart';
import 'package:larery/components/widget/w_card.dart';
import 'package:larery/module/homepage/controller/c_homepage.dart';
import 'package:larery/routes/routes.dart';
import 'package:larery/utils/const.dart';

class HomePage extends GetView<CHomePage> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   shape: CircleBorder(),
      //   backgroundColor: Colors.black,
      //   child: ImageIcon(
      //     AssetImage("assets/icons/pause_icon.png"),
      //     color: Colors.white,
      //     size: 36,
      //   ),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Const.parentMargin(), vertical: Const.parentMargin(x: 2)),
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: Const.siblingMargin(x: 3)),
                      child: CircleAvatar(
                        radius: 22,
                        backgroundImage: AssetImage("assets/images/pfp.png"),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Today, 10 Dec 2023",
                            style: GoogleFonts.inter(textStyle: TextStyle(color: Color(0XFFF696969), fontWeight: FontWeight.w500, fontSize: 12))),
                        Row(
                          children: [
                            Text(
                              "Bimore Mazen",
                              style: GoogleFonts.inter(fontWeight: FontWeight.w600, fontSize: 16),
                            ),
                            ImageIcon(AssetImage("assets/icons/chevron_down.png"))
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      width: 110,
                    ),
                    Container(
                      width: 42,
                      height: 42,
                      decoration: BoxDecoration(color: Color(0XFFFF6F6F6), borderRadius: BorderRadius.circular(8)),
                      child: ImageIcon(
                        AssetImage("assets/icons/bell_icon.png"),
                        size: 42,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 83,
                padding: EdgeInsets.symmetric(vertical: Const.siblingMargin(x: 2), horizontal: Const.siblingMargin(x: 2)),
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/images/BG.png",
                      ),
                    ),
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(23)),
                child: Row(
                  children: [
                    Container(
                      width: 51,
                      height: 51,
                      decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(12)),
                      child: ImageIcon(
                        AssetImage("assets/icons/loader_icon.png"),
                        size: 24,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Container(
                      height: 40,
                      width: 160,
                      child: Text("Let’s Create Your Amazing Track!",
                          textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false, applyHeightToLastDescent: false),
                          style: GoogleFonts.inter(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600)),
                    ),
                    SizedBox(
                      width: 36,
                    ),
                    Container(
                      width: 63,
                      height: 31,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(100)),
                      child: Text(
                        "Create",
                        style: GoogleFonts.inter(fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  Get.toNamed(Routes.challengepage);
                },
                child: WActivityCard(),
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      WCard(
                          type: CardType.DEFAULT,
                          icon: "assets/icons/heart_icon.png",
                          title: "Heart Rate",
                          amount: "60-72",
                          details: "Beats",
                          color: Color(0XFFF64DE9C)),
                      WCard(
                        type: CardType.DEFAULT,
                        icon: "assets/icons/fire_icon.png",
                        title: "Calories Burnt",
                        amount: "4.555",
                        details: "KCAL",
                        color: Color(0XFFFFC5E5B),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                    WCard(
                        type: CardType.DEFAULT,
                        icon: "assets/icons/clock_icon.png",
                        title: "Total Time",
                        amount: "92",
                        details: "Minutes",
                        color: Color(0XFFF9092DF)),
                    WCard(
                      type: CardType.DEFAULT,
                      icon: "assets/icons/map_icon.png",
                      title: "Total Distance",
                      amount: "12560",
                      details: "Steps",
                      color: Color(0XFFFF59A4FF),
                    )
                  ])
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 90,
        color: Colors.white,
        child: Container(
          decoration: BoxDecoration(border: Border(top: BorderSide(color: Color(0XFFFF6F6F6)))),
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MaterialButton(
                    minWidth: 20,
                    onPressed: () {},
                    child: ImageIcon(
                      AssetImage("assets/icons/home_icon.png"),
                      size: 40,
                    ),
                  ),
                  MaterialButton(
                    minWidth: 20,
                    onPressed: () {},
                    child: ImageIcon(
                      AssetImage("assets/icons/chart_icon.png"),
                      size: 40,
                    ),
                  ),
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(color: Colors.black, shape: BoxShape.circle),
                    child: ImageIcon(
                      AssetImage("assets/icons/pause_icon.png"),
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                  MaterialButton(
                    minWidth: 20,
                    onPressed: () {},
                    child: ImageIcon(
                      AssetImage("assets/icons/target_icon.png"),
                      size: 40,
                    ),
                  ),
                  MaterialButton(
                    minWidth: 20,
                    onPressed: () {},
                    child: ImageIcon(
                      AssetImage("assets/icons/crown_icon.png"),
                      size: 40,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
