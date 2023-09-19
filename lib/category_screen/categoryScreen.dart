import 'package:get/get.dart';
import 'package:online_shoping/category_screen/category_details.dart';
import 'package:online_shoping/consts/consts.dart';
import 'package:online_shoping/consts/list.dart';
import 'package:online_shoping/widgets_common/bg_widget.dart';

class categoryScreen extends StatelessWidget {
  const categoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(appBar: AppBar(
        title: categories.text.fontFamily(bold).white.make(),
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        child:GridView.builder(
    // physics: const NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    itemCount: 9,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 8, crossAxisSpacing: 8, mainAxisExtent: 200),
    itemBuilder: (context,index){
    return Column(
      children: [
        Image.asset(categoriesImages[index], height: 120, width: 200, fit: BoxFit.cover),
        10.heightBox,
        categoriesList[index].text.color(darkFontGrey).align(TextAlign.center).make(),

      ],
    ).box.white.rounded.clip(Clip.antiAlias).outerShadowSm.make().onTap(() {
      Get.to(()=> CategoryDetails(title: categoriesList[index]));
    });
    }
        ),

      ),
      )
    );
  }
}
