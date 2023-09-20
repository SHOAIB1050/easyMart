import 'package:online_shoping/consts/consts.dart';
import 'package:online_shoping/widgets_common/our_button.dart';

class ItemDetils extends StatelessWidget {
  final String? title;
  const ItemDetils({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: title!.text.color(darkFontGrey).fontFamily(bold).make(),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.share)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline)),
        ],
      ),
      body: Column(
        children: [
          Expanded(child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [VxSwiper.builder(
                    autoPlay: true,
                    height: 250,
                    aspectRatio: 16/9,
                    itemCount: 3,
                    itemBuilder: (context,index){
                  return Image.asset(imgFc5,width: double.infinity,fit: BoxFit.cover);
                    }),
                  10.heightBox,
                  title!.text.size(16).color(darkFontGrey).fontFamily(bold).make(),
                  10.heightBox,
                  VxRating(onRatingUpdate: (value){},
                  normalColor: textfieldGrey,
                  selectionColor: golden,
                  count: 5, size: 25, stepInt: true,
                  ),
                  10.heightBox,
                  "\$30,000".text.color(redColor).fontFamily(bold).size(18).make(),
                  10.heightBox,
                  Row(children: [
                    Expanded(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      "Seller".text.white.fontFamily(semibold).make(),
                        5.heightBox,
                      "In House Brand".text.fontFamily(semibold).color(darkFontGrey).size(16).make()],),),
                const CircleAvatar(backgroundColor: Colors.white,
                  child: Icon(Icons.message_rounded, color: darkFontGrey,),
                )],
                  ).box.height(60).padding(const EdgeInsets.symmetric(horizontal: 16)).color(textfieldGrey).make(),
                  20.heightBox,
                  Column(children: [
                    Row(
                      children: [
                        SizedBox(width: 100,
                            child: "Color:".text.color(textfieldGrey).make()
                    ),
                    Row(children: List.generate(3, (index) => VxBox().size(40, 40).roundedFull.color(Vx.randomOpaqueColor)
                        .margin(const EdgeInsets.symmetric(horizontal: 4)).make(),
                    ),)
                  ],
                  ).box.padding(const EdgeInsets.all(8)).make(),
                    Row(
                      children: [
                        SizedBox(width: 100,
                            child: "Color:".text.color(textfieldGrey).make()
                        ),
                        Row(children: List.generate(3, (index) => VxBox().size(40, 40).roundedFull.color(Vx.randomOpaqueColor)
                            .margin(const EdgeInsets.symmetric(horizontal: 4)).make(),
                        ),)
                      ],
                    ).box.padding(const EdgeInsets.all(8)).make()
                  ],).box.white.shadowSm.make(),
                ],
              ),
            )
          ),
          ),
          SizedBox(width: double.infinity,height: 60,
          child: ourButton(color: redColor,onPress: (){}, textColor: whiteColor, title: "Add to Cart"),),
        ],
      )
    );
  }
}








