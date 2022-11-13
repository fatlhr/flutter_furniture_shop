import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: GoogleFonts.poppins(
          textStyle: Theme.of(context).textTheme.headline6,
        ),
      ),
      leading: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Image.asset(
          "assets/icons/filter.png",
          height: 18,
          width: 22,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: Image.asset(
            "assets/icons/search.png",
            height: 18,
            width: 22,
          ),
        ),
        const SizedBox(
          width: 14,
        )
      ],
      centerTitle: true,
    );
  }
}
