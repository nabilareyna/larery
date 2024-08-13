import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:larery/utils/const.dart';

class WCard extends StatelessWidget {
  const WCard({super.key, this.amount, this.details, this.icon, this.title, this.color});

  final String? icon;
  final String? title;
  final String? amount;
  final String? details;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 145,
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(24), border: Border.all(color: Color(0XFFFF6F6F6))),
      padding: EdgeInsets.all(Const.siblingMargin(x: 4)),
      child: Column(
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
      ),
    );
  }
}
