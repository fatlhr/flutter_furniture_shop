import 'package:flutter/material.dart';
import 'package:flutter_furniture_shop/app/configs/content_const.dart';
import 'package:flutter_furniture_shop/app/detail_page/detail_page.dart';
import 'package:flutter_furniture_shop/app/home_page/widgets/tabr_bar_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widgets/appBar_widget.dart';
import 'widgets/contentCardWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(
            MediaQuery.of(context).size.width,
            kToolbarHeight,
          ),
          child: const AppBarWidget(
            title: 'Home',
            isMoreOneAction: false,
            isCustomLeading: true,
          ),
        ),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                          return TabBarWidget(
                            index: index,
                            text: ContentConst.tabBarTitle[index],
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
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 14),
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
                    return InkWell(
                      onTap: (() {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const DetailPage()));
                      }),
                      child: ContentCard(
                        size: size,
                        index: index,
                        images: ContentConst.contentPic[index],
                        contentTitle: ContentConst.contentTitle[index],
                        contentPrice:
                            ContentConst.contentPrice[index].toString(),
                        contentRate: ContentConst.contentRate[index].toString(),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
