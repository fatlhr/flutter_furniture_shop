import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../configs/color_lib.dart';
import '../../home_page/widgets/contentCardWidget.dart';

class SliverAppBarWIdget extends StatelessWidget {
  const SliverAppBarWIdget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: size.height * (3 / 5),
      pinned: true,
      floating: true,
      title: Text(
        "Detail",
        style: GoogleFonts.poppins(
          textStyle: Theme.of(context).textTheme.headline6,
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
      actions: <Widget>[
        const Padding(
          padding: EdgeInsets.all(8),
          child: FavoriteWidget(),
        ),
        IconButton(
          icon: const Icon(
            Icons.share,
            color: ColorLib.blackText,
          ),
          onPressed: () {},
        ),
      ],
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          color: ColorLib.blackText,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: Image.asset(
          'assets/imageDetail.png',
          fit: BoxFit.cover,
        ),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: Container(
          width: double.maxFinite,
          height: 40,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 14,
              ),
              Container(
                height: 6,
                width: MediaQuery.of(context).size.width / 8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: ColorLib.lightGrey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
