import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:larery/utils/const.dart';

class WActivityCard extends StatelessWidget {
  const WActivityCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 221,
      width: double.infinity,
      decoration: BoxDecoration(color: Color(0XFFFF6F6F6), borderRadius: BorderRadius.circular(32)),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            alignment: Alignment.centerRight,
            child: Image.asset('assets/images/map.png'),
          ),
          Container(
            width: double.infinity,
            height: 221,
            padding: EdgeInsets.all(Const.siblingMargin(x: 4)),
            color: Colors.transparent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 124,
                  height: 32,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(32), color: Color(0XFFFFF9F47)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(Const.siblingMargin()),
                        child: ImageIcon(
                          AssetImage('assets/icons/union_icon.png'),
                          color: Colors.white,
                          size: 16,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: Const.siblingMargin(), right: Const.siblingMargin(), top: Const.siblingMargin()),
                        child: Text(
                          'IN PROGRESS',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Text(
                  "Challenge II",
                  style: GoogleFonts.inter(fontSize: 24, fontWeight: FontWeight.w700, color: Colors.black),
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    ImageIcon(
                      AssetImage('assets/icons/clock_icon.png'),
                      size: 24,
                    ),
                    Text('3.2H', style: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w600)),
                    SizedBox(
                      width: 10,
                    ),
                    ImageIcon(
                      AssetImage('assets/icons/loc_icon.png'),
                      size: 24,
                    ),
                    Text("12 KM", style: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w600))
                  ],
                ),
                SizedBox(
                  height: 23,
                ),
                Container(
                  width: double.infinity,
                  height: 52,
                  decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.all(Radius.circular(32))),
                  child: Padding(
                    padding: EdgeInsets.only(left: Const.parentMargin(x: 1.2), right: Const.siblingMargin(x: 1.5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Finish the Challenge",
                          style: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white),
                        ),
                        Container(
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                          child: ImageIcon(AssetImage('assets/icons/arrow_backward.png')),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
