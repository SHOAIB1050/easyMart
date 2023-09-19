import 'package:get/get.dart';
import 'package:online_shoping/category_screen/item_details.dart';
import 'package:online_shoping/consts/consts.dart';
import 'package:online_shoping/widgets_common/bg_widget.dart';
class CategoryDetails extends StatelessWidget {
  final String? title;
  const CategoryDetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        appBar: AppBar(title: title!.text.fontFamily(bold).white.make(),),
        body: Container(
          padding: EdgeInsets.all(12),
          child: Column(children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: List.generate(6, (index) => "Baby Clothing".text.size(12).fontFamily(semibold)
                    .color(darkFontGrey)
                    .makeCentered()
                    .box
                    .white.size(120, 60).rounded
                    .margin(EdgeInsets.symmetric(horizontal: 4),)
                    .make(),),
              ),
            ),
            20.heightBox,
            Expanded(child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 6,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, mainAxisSpacing: 8, crossAxisSpacing: 8, mainAxisExtent: 250),
                  itemBuilder: (context,index){
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(imgP5, width: 200,height: 150, fit: BoxFit.cover),
                        "Laptop 4GB/64GB".text.fontFamily(semibold).color(darkFontGrey).make(),
                        10.heightBox,
                        "\$600".text.color(redColor).fontFamily(bold).size(16).make()

                      ],
                    ).box.white.margin(EdgeInsets.symmetric(horizontal: 4)).roundedSM.outerShadowSm.padding(const EdgeInsets.all(12)).make()
                    .onTap(() {
                      Get.to(()=> ItemDetils(title: "Dummy Item"));
                    });

                  }),
            )
          ],
          ),
        ),
      )
    );
  }
}
