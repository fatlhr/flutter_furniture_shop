import 'package:flutter/material.dart';
import 'package:flutter_furniture_shop/app/configs/color_lib.dart';
import 'package:flutter_furniture_shop/app/configs/text_content.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widgets/appBar_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, kToolbarHeight),
        child: const AppBarWidget(),
      ),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 14),
          child: ListView(
            shrinkWrap: true,
            children: [
              const SizedBox(height: 21),
              Text(
                TextContent.discover,
                style: GoogleFonts.poppins(
                  textStyle: Theme.of(context).textTheme.headline5,
                ),
              ),
              // SizedBox(
              //   height: 34,
              //   child: ListView.builder(
              //     scrollDirection: Axis.horizontal,
              //     itemBuilder: (context, index) {
              //       return Container(
              //         decoration: const BoxDecoration(
              //           color: ColorLib.grey,
              //           borderRadius: BorderRadius.horizontal(
              //             left: Radius.circular(20),
              //             right: Radius.circular(20),
              //           ),
              //         ),
              //       );
              //     },
              //   ),
              // ),
            
            ],
          ),
        ),
      ),
    );
  }
}
