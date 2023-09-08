import 'package:online_shoping/consts/consts.dart';
import 'package:online_shoping/consts/list.dart';
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
                  suffixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: whiteColor, hintText: searchanything,
                  hintStyle: TextStyle(color: textfieldGrey)),)
          ),
          VxSwiper.builder(
              itemCount: slidersList.length,
              itemBuilder: (context,index){
                return Container(
                  child: Image.asset(
                    slidersList[index],
                    fit: BoxFit.fitWidth,
                  ),
                );
              })
         ],
      )),
    );
  }
}
