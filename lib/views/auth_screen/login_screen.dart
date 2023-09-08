import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_shoping/consts/consts.dart';
import 'package:online_shoping/consts/list.dart';
import 'package:online_shoping/views/auth_screen/singup_screen.dart';
import 'package:online_shoping/home_screen/home.dart';
import 'package:online_shoping/widgets_common/applogo_widget.dart';
import 'package:online_shoping/widgets_common/bg_widget.dart';
import 'package:online_shoping/widgets_common/custom_textfield.dart';
import 'package:online_shoping/widgets_common/our_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Center(
            child: Column(
              children: [
                (context.screenHeight*0.1).heightBox,
                applogoWidget(),
                10.heightBox,
                "Log in to $appname".text.fontFamily(bold).white.size(18).make(),
                15.heightBox,
                Column(
                  children: [
                    customTextField(hint: emailHint, title: email),
                    customTextField(hint: passwordHint, title: password),
                    Align(alignment: Alignment.centerRight,
                        child: TextButton(onPressed: (){}, child: forgetPass.text.make())),
                    5.heightBox,
                    ourButton(onPress: (){
                      Get.to(()=>const Home());
                    }, color:redColor, textColor:whiteColor, title:login).box.width(context.screenWidth-50).make(),
                    5.heightBox,
                    createNetworkAccount.text.color(fontGrey).make(),
                    5.heightBox,
                    ourButton(onPress: (){
                      Get.to(()=> const SingUpScreen());
                    }, color: redgolden, textColor:redColor, title: singup).box.width(context.screenWidth-50).make(),
                    5.heightBox,
                    loginWith.text.color(fontGrey).make(),
                    5.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(3, (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundColor: lightGrey,
                          radius: 20,
                          child: Image.asset(socialIconList[index],width: 30,),
                        ),
                      )),
                    ),
                  ],
                ).box.white.rounded.padding(const EdgeInsets.all(16)).width(context.screenWidth - 70).shadowSm.make(),


              ],
            ),
          ),
        ));
  }
}
















