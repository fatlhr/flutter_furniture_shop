import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../configs/color_lib.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({
    Key? key,
    required this.index,
    required this.text,
  }) : super(key: key);
  final int index;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: index == 0 ? ColorLib.grey : Colors.transparent,
        borderRadius: const BorderRadius.horizontal(
          left: Radius.circular(20),
          right: Radius.circular(20),
        ),
      ),
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: index == 0 ? 21 : 14.0,
          ),
          child: Text(
            text,
            style: GoogleFonts.poppins(
              textStyle: Theme.of(context).textTheme.caption,
              color: index == 0 ? ColorLib.whiteText : ColorLib.blackText,
            ),
          ),
        ),
      ),
    );
  }
}
