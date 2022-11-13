import 'package:flutter/material.dart';
import 'package:flutter_furniture_shop/app/configs/color_lib.dart';
import 'package:flutter_furniture_shop/app/configs/content_const.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widgets/appBar_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double cardHeight = size.height / 3;
    double cardWidth = (size.width / 2) - 28;
    double imageCardHeight = cardHeight * (2 / 3);
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 14),
          child: ListView(
            children: [
              const SizedBox(height: 21),
              Text(
                ContentConst.discover,
                style: GoogleFonts.poppins(
                  textStyle: Theme.of(context).textTheme.headline5,
                ),
              ),
              const SizedBox(height: 21),
              SizedBox(
                height: 34,
                width: size.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: ContentConst.tabBarTitle.length,
                  itemBuilder: (context, index) {
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
                            ContentConst.tabBarTitle[index],
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.caption,
                              color: index == 0
                                  ? ColorLib.whiteText
                                  : ColorLib.blackText,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 21),
              Text(
                ContentConst.recommended,
                style: GoogleFonts.poppins(
                  textStyle: Theme.of(context).textTheme.headline6,
                ),
              ),
              const SizedBox(height: 14),
              Expanded(
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: ContentConst.contentTitle.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.75,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                  ),
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Container(
                          height: cardHeight,
                          width: cardWidth,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: const BoxDecoration(
                                    //color: ColorLib.grey,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20),
                                      bottomLeft: Radius.zero,
                                      bottomRight: Radius.zero,
                                    ),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        'https://picsum.photos/200/300',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 14),
                                    Text(ContentConst.contentTitle[index]),
                                    const SizedBox(height: 14),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(ContentConst.contentPrice[index]
                                            .toString()),
                                        Text(ContentConst.contentRate[index]
                                            .toString()),
                                      ],
                                    ),
                                    const SizedBox(height: 14),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        
                      ],
                    );
                  },
                ),
              ),
              const SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
