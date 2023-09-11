import 'package:online_shoping/consts/consts.dart';
import 'package:online_shoping/consts/list.dart';
import 'package:online_shoping/widgets_common/home_button.dart';

import 'components/featured_button.dart';
class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(child: Column(
        children: [
          Container(
            height: 60,
          alignment: Alignment.center,
            color: lightGrey,
            child: TextFormField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                  suffixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: whiteColor, hintText: searchanything,
                  hintStyle: TextStyle(color: textfieldGrey)),)
          ),
          5.heightBox,
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  VxSwiper.builder(
                      aspectRatio: 16/9,
                      autoPlay: true,
                      height: 120,
                      enlargeCenterPage: true,
                      itemCount: slidersList.length,
                      itemBuilder: (context,index){
                        return Image.asset(
                            slidersList[index],
                            fit: BoxFit.fill
                        ).box.rounded.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(horizontal: 8)).make();
                      }),
                  10.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(2, (index) => homeButtons(
                      height: context.screenHeight * 0.15,
                      width: context.screenWidth/3,
                      icon: index == 0 ? icTodaysDeal : icFlashDeal,
                      title: index == 0 ? todayDeal : flashsale,
                    )),
                  ),
                  10.heightBox,
                  VxSwiper.builder(
                      aspectRatio: 16/9,
                      autoPlay: true,
                      height: 110,
                      enlargeCenterPage: true,
                      itemCount: secondSlidersList.length,
                      itemBuilder: (context,index){
                        return Image.asset(
                            secondSlidersList[index],
                            fit: BoxFit.fill
                        ).box.rounded.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(horizontal: 8)).make();
                      }),
                  10.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(3, (index) => homeButtons(
                      height: context.screenHeight * 0.15,
                      width: context.screenWidth/4,
                      icon: index == 0 ? icTopCategories : index == 1 ? icBrands : icTopSeller,
                      title: index == 0 ? topCategries : index == 1 ? brand : topSellers,
                    )),
                  ),
                  5.heightBox,
                  Align(
                      alignment: Alignment.centerLeft,
                      child: featuredCategries.text.color(darkFontGrey).size(18).fontFamily(semibold).make()
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: List.generate(3, (index) => Column(
                      children: [
                        featureButton(icon: featuredImages1[index], title: featuredTitles1[index]),
                        10.heightBox,
                        featureButton(icon: featuredImages2[index], title: featuredTitles2[index]),
                      ],
                    )),),
                  ),
                  20.heightBox,
                  Container(
                    padding: const EdgeInsets.all(12),
                    width: double.infinity,
                    decoration: const BoxDecoration(color: redColor),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      featuredProducts.text.white.fontFamily(bold).size(18).make(),
                      10.heightBox,
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(6, (index) => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(imgP1, width: 150, fit: BoxFit.cover),
                              10.heightBox,
                              "Laptop 4GB/64GB".text.fontFamily(semibold).color(darkFontGrey).make(),
                              10.heightBox,
                              "\$600".text.color(redColor).fontFamily(bold).size(16).make()

                            ],
                          ).box.white.margin(EdgeInsets.symmetric(horizontal: 4)).roundedSM.padding(const EdgeInsets.all(8)).make()),
                        ),
                      )
                    ],),
                  ),
                  20.heightBox,
                  VxSwiper.builder(
                      aspectRatio: 16/9,
                      autoPlay: true,
                      height: 110,
                      enlargeCenterPage: true,
                      itemCount: thirdSlidersList.length,
                      itemBuilder: (context,index){
                        return Image.asset(
                            thirdSlidersList[index],
                            fit: BoxFit.fill
                        ).box.rounded.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(horizontal: 8)).make();
                      }),
                  20.heightBox,
                  GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 6,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, mainAxisSpacing: 8, crossAxisSpacing: 8, mainAxisExtent: 300),
                      itemBuilder: (context,index){
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(imgP5, width: 200,height: 200, fit: BoxFit.cover),
                        const Spacer(),
                        "Laptop 4GB/64GB".text.fontFamily(semibold).color(darkFontGrey).make(),
                        10.heightBox,
                        "\$600".text.color(redColor).fontFamily(bold).size(16).make()

                      ],
                    ).box.white.margin(EdgeInsets.symmetric(horizontal: 4)).roundedSM.padding(const EdgeInsets.all(12)).make();

                  })

                ],
              ),
            ),
          ),
         ],
      )),
    );
  }
}
