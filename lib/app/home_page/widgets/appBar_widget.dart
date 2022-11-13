import 'package:flutter/material.dart';
import 'package:flutter_furniture_shop/app/home_page/widgets/contentCardWidget.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../configs/color_lib.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key? key,
    required this.title,
    this.action1,
    this.action2 = const SizedBox(),
    this.isMoreOneAction = false,
    this.leading,
    this.isCustomLeading = true,
    this.onPressedBack,
  }) : super(key: key);
  final String title;
  final Widget? action1;
  final Widget? action2;
  final Widget? leading;
  final bool isMoreOneAction;
  final bool isCustomLeading;
  final Function()? onPressedBack;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: GoogleFonts.poppins(
          textStyle: Theme.of(context).textTheme.headline6,
        ),
      ),
      leading: isCustomLeading
          ? Padding(
              padding: const EdgeInsets.all(14.0),
              child: Image.asset(
                "assets/icons/filter.png",
                height: 18,
                width: 22,
              ),
            )
          //Icon(Icons.filter_1, color: ColorLib.blackText)
          : IconButton(
              onPressed: () {},
              padding: EdgeInsets.zero,
              icon: const Icon(Icons.arrow_back),
            ),
      actions: [
        isMoreOneAction ? action2! : const SizedBox(),
        isMoreOneAction
            ? const FavoriteWidget()
            : Padding(
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
