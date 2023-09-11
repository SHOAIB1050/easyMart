import 'package:online_shoping/consts/consts.dart';

Widget homeButtons({width, height, icon, String? title, onPress}){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(icon, width: 25),
        5.heightBox,
        title!.text.fontFamily(semibold).color(darkFontGrey).make()
      ],
    ).box.rounded.white.size(width, height).make();
}