import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../configs/color_lib.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'Home',
        style: GoogleFonts.poppins(
          textStyle: Theme.of(context).textTheme.headline6,
        ),
      ),
      leading: const Icon(Icons.filter_1, color: ColorLib.blackText),
      actions: const [
        Icon(Icons.search, color: ColorLib.blackText),
        SizedBox(
          width: 8,
        )
      ],
      centerTitle: true,
    );
  }
}
