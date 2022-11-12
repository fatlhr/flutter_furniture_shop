import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        child: Text(
          'ini poppins',
          style: GoogleFonts.poppins(
              textStyle: Theme.of(context).textTheme.headline4),
        ),
      ),
    );
  }
}
