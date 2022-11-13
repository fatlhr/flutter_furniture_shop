import 'package:flutter/material.dart';
import 'package:flutter_furniture_shop/app/configs/color_lib.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../configs/content_const.dart';
import 'widgets/sliver_app_bar_wIdget.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          controller: ScrollController(
            initialScrollOffset: 200,
            keepScrollOffset: false,
          ),
          slivers: <Widget>[
            SliverAppBarWIdget(size: size),
            SliverToBoxAdapter(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                //transform: Matrix4.translationValues(0.0, -5, 0.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(0.8),
                      offset: const Offset(6.0, 6.0),
                      blurRadius: 16.0,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          ContentConst.detailProductTitle,
                          style: GoogleFonts.poppins(
                            textStyle: Theme.of(context).textTheme.headline5,
                          ),
                        ),
                        Text(
                          "\$ ${ContentConst.detailProductPrice}",
                          style: GoogleFonts.poppins(
                            textStyle: Theme.of(context).textTheme.subtitle1,
                            color: ColorLib.lightGreyText,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                      height: 30,
                      child: ListView.builder(
                        itemCount: 5,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return IconButton(
                            onPressed: () {},
                            padding: const EdgeInsets.only(right: 2),
                            constraints: const BoxConstraints(),
                            icon: const Icon(
                              Icons.star,
                              color: ColorLib.star,
                            ),
                            iconSize: 18,
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 14),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            "Choose a color :",
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.caption,
                              color: ColorLib.lightGreyText,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          //width: size.width / 2,
                          child: ListView.builder(
                            itemCount: 4,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return Container(
                                height: 30,
                                width: 30,
                                margin: const EdgeInsets.only(left: 8),
                                decoration: BoxDecoration(
                                  color: index != 0
                                      ? Colors.white
                                      : ContentConst.colorPicker[index],
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                alignment: Alignment.center,
                                child: Container(
                                  height: 26,
                                  width: 26,
                                  decoration: BoxDecoration(
                                    color: ContentConst.colorPicker[index],
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                              );
                            },
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 14),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            "Select Quality :",
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.caption,
                              color: ColorLib.lightGreyText,
                            ),
                          ),
                        ),
                        const Expanded(
                          child: SizedBox(),
                        ),
                        Container(
                          height: 32,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(30),
                              bottomLeft: Radius.circular(30),
                            ),
                            border: Border.all(
                              color: ColorLib.lightGrey,
                              width: 1,
                            ),
                          ),
                          child: IconButton(
                            padding: EdgeInsets.zero,
                            constraints: const BoxConstraints(),
                            icon: const Icon(Icons.remove),
                            onPressed: (() {}),
                          ),
                        ),
                        Container(
                          height: 32,
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: ColorLib.lightGrey,
                            border: Border.all(
                              color: ColorLib.lightGrey,
                              width: 1,
                            ),
                          ),
                          child: Text(
                            '2',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.bodyText1,
                              color: ColorLib.greyText,
                            ),
                          ),
                        ),
                        Container(
                          height: 32,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(30),
                              bottomRight: Radius.circular(30),
                            ),
                            border: Border.all(
                              color: ColorLib.lightGrey,
                              width: 1,
                            ),
                          ),
                          child: IconButton(
                            padding: EdgeInsets.zero,
                            constraints: const BoxConstraints(),
                            icon: const Icon(Icons.add),
                            onPressed: (() {}),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 32),
                    Text(
                      ContentConst.detailProductDesc,
                      style: GoogleFonts.poppins(
                        textStyle: Theme.of(context).textTheme.caption,
                        color: ColorLib.greyText,
                      ),
                    ),
                    const SizedBox(height: 21),
                    SizedBox(
                      width: size.width - 42,
                      height: 48,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: ColorLib.grey,
                          shape: const StadiumBorder(),
                        ),
                        child: Text(
                          "ADD TO CART",
                          style: GoogleFonts.poppins(
                            textStyle: Theme.of(context).textTheme.caption,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 21),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
