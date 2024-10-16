import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:larery/components/widget/w_card.dart';
import 'package:larery/module/homepage/controller/c_challengepage.dart';
import 'package:larery/utils/const.dart';
import 'package:google_fonts/google_fonts.dart';

class ChallengePage extends GetView<CChallengePage> {
  const ChallengePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          child: Image.asset('assets/images/Maps.png'),
        ),
        Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: Const.parentMargin(), vertical: Const.parentMargin(x: 3.5)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 42,
                    height: 42,
                    decoration: BoxDecoration(color: Color(0XFFFF6F6F6), borderRadius: BorderRadius.circular(8)),
                    child: Image.asset(
                      "assets/icons/arrow_backward.png",
                      width: 24,
                    ),
                  ),
                  Container(
                    width: 42,
                    height: 42,
                    decoration: BoxDecoration(color: Color(0XFFFF6F6F6), borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Image.asset(
                      "assets/icons/idk_icon.png",
                      width: 24,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              width: 80,
              height: 32,
              decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(100)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/icons/maps_icon.png",
                    width: 16,
                    height: 16,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text("MAPS", style: GoogleFonts.inter(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w600))
                ],
              ),
            ),
            SizedBox(
              height: 14,
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: Const.siblingMargin(x: 3), horizontal: Const.parentMargin()),
                width: double.infinity,
                decoration:
                    BoxDecoration(color: Color(0XFFFFDFDFD), borderRadius: BorderRadius.only(topLeft: Radius.circular(24), topRight: Radius.circular(24))),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Challenge II", style: GoogleFonts.inter(color: Colors.black, fontSize: 24, fontWeight: FontWeight.w700)),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset("assets/icons/clock_icon.png"),
                                SizedBox(
                                  width: 2,
                                ),
                                Text("3.2 H", style: GoogleFonts.inter(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600)),
                                SizedBox(
                                  width: 4,
                                ),
                                Image.asset("assets/icons/loc_icon.png"),
                                Text("12 KM", style: GoogleFonts.inter(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600))
                              ],
                            )
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.black),
                          height: 69,
                          width: 69,
                          child: Image.asset(
                            "assets/icons/pause_icon.png",
                            color: Colors.white,
                            width: 40,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 353,
                      height: 192,
                      padding: EdgeInsets.all(Const.parentMargin()),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0XFFFF6F6F6),
                          ),
                          borderRadius: BorderRadius.circular(24)),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                      width: 42,
                                      height: 42,
                                      decoration: BoxDecoration(shape: BoxShape.circle, color: Color(0XFFFFF9F47)),
                                      child: Image.asset(
                                        "assets/icons/union_bigger_icon.png",
                                      )),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Your Avg Speed", style: GoogleFonts.inter(color: Color(0XFFF696969), fontSize: 12, fontWeight: FontWeight.w500)),
                                      Text("26.70", style: GoogleFonts.inter(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w700))
                                    ],
                                  ),
                                ],
                              ),
                              Text("km/h", style: GoogleFonts.inter(color: Color(0XFFF696969), fontSize: 12, fontWeight: FontWeight.w500))
                            ],
                          ),
                          AspectRatio(
                            aspectRatio: 3.07 / 1,
                            child: LineChart(LineChartData(
                                minX: 0,
                                minY: 0,
                                maxX: 5,
                                maxY: 5,
                                titlesData: FlTitlesData(show: false),
                                borderData: FlBorderData(show: false),
                                gridData: FlGridData(show: false),
                                lineBarsData: [
                                  LineChartBarData(
                                      spots: const [
                                        FlSpot(0, 3.5),
                                        FlSpot(0.5, 3.5),
                                        FlSpot(1, 2),
                                        FlSpot(1.5, 4),
                                      ],
                                      isCurved: true,
                                      color: Color(0XFFFFF9F47),
                                      belowBarData: BarAreaData(
                                          show: true,
                                          gradient: LinearGradient(
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: [Color(0XFFFFF9F47), Color(0XFFFFF9F47).withOpacity(0)])))
                                ])),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        WCard(
                            type: CardType.SMALL,
                            icon: "assets/icons/heart_icon.png",
                            title: "Heart Rate",
                            amount: "60-72",
                            details: "Beats",
                            color: Color(0XFFF64DE9C)),
                        WCard(
                          type: CardType.SMALL,
                          icon: "assets/icons/fire_icon.png",
                          title: "Calories Burnt",
                          amount: "4.555",
                          details: "KCAL",
                          color: Color(0XFFFFC5E5B),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        WCard(
                          type: CardType.SMALL,
                          icon: "assets/icons/clock_icon.png",
                          title: "Total Time",
                          amount: "92",
                          details: "Minutes",
                          color: Color(0XFFF9092DF),
                        ),
                        WCard(
                          type: CardType.SMALL,
                          icon: "assets/icons/map_icon.png",
                          title: "Total Distance",
                          amount: "12560",
                          details: "Steps",
                          color: Color(0XFFFF59A4FF),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ],
    ));
  }
}
