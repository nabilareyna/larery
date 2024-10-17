import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:larery/utils/const.dart';

enum CardType { DEFAULT, SMALL }

class WCard extends StatelessWidget {
  const WCard({super.key, this.amount, this.details, this.icon, this.title, this.color, this.type});

  final String? icon;
  final String? title;
  final String? amount;
  final String? details;
  final Color? color;
  final CardType? type;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: type == CardType.DEFAULT ? 140 : 74,
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(24), border: Border.all(color: Color(0XFFFF6F6F6))),
      padding: EdgeInsets.all(Const.siblingMargin(x: 3)),
      child: type == CardType.DEFAULT
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    width: 42,
                    height: 42,
                    decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
                    child: Image.asset(
                      icon!,
                      color: Colors.white,
                    )),
                SizedBox(
                  height: 10,
                ),
                Text(
                  title!,
                  style: GoogleFonts.inter(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0XFFF696969)),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(amount!, style: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black)),
                Text(details!, style: GoogleFonts.inter(fontSize: 12, fontWeight: FontWeight.w600, color: Colors.black))
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    width: 42,
                    height: 42,
                    decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
                    child: Image.asset(
                      icon!,
                      color: Colors.white,
                    )),
                SizedBox(
                  width: 4,
                ),
                Container(
                  width: 90,
                  height: 40,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title!,
                        style: GoogleFonts.inter(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0XFFF696969)),
                      ),
                      Row(
                        children: [
                          Text(amount!, style: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black)),
                          SizedBox(
                            width: 4,
                          ),
                          Text(details!, style: GoogleFonts.inter(fontSize: 12, fontWeight: FontWeight.w600, color: Colors.black)),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
    );
  }
}
