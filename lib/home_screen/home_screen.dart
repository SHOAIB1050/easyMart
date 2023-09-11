import 'package:online_shoping/consts/consts.dart';
import 'package:online_shoping/consts/list.dart';
import 'package:online_shoping/widgets_common/home_button.dart';
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
                      height: 110,
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
                  Align(
                      alignment: Alignment.centerLeft,
                      child: featuredCategries.text.color(darkFontGrey).size(18).fontFamily(semibold).make()
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: featuredCategries.text.color(darkFontGrey).size(18).fontFamily(semibold).make()
                  ),
                ],
              ),
            ),
          )

         ],
      )),
    );
  }
}
