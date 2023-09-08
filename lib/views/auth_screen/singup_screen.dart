import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_shoping/consts/consts.dart';
import 'package:online_shoping/consts/list.dart';
import 'package:online_shoping/widgets_common/applogo_widget.dart';
import 'package:online_shoping/widgets_common/bg_widget.dart';
import 'package:online_shoping/widgets_common/custom_textfield.dart';
import 'package:online_shoping/widgets_common/our_button.dart';
class SingUpScreen extends StatefulWidget {
  const SingUpScreen({super.key});

  @override
  State<SingUpScreen> createState() => _SingUpScreenState();
}

class _SingUpScreenState extends State<SingUpScreen> {
  bool? isCheck = false;
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
                "Join the $appname".text.fontFamily(bold).white.size(18).make(),
                15.heightBox,
                Column(
                  children: [
                    customTextField(hint: nameHint, title: name),
                    customTextField(hint: emailHint, title: email),
                    customTextField(hint: passwordHint, title: password),
                    customTextField(hint: retypepasswordHint, title: retypepassword),
                    5.heightBox,
                    Row(children: [
                      Checkbox(
                          activeColor: redColor,
                          checkColor:Colors.white,
                          value: isCheck, onChanged: (newValue){
                        setState(() {
                          isCheck = newValue;
                        });
                      }),
                    10.widthBox,
                    Expanded(
                      child: RichText(text: const TextSpan(
                        children: [TextSpan(text: "I agree to the ",style: TextStyle(fontFamily: regular, color: fontGrey)),
                          TextSpan(text: termAndCond,style: TextStyle(fontFamily: regular, color: redColor)),
                          TextSpan(text: " & ",style: TextStyle(fontFamily: regular, color: fontGrey)),
                          TextSpan(text: privacyPolicy,style: TextStyle(fontFamily: regular, color: redColor))
                        ]
                      )),
                    )
                    ],),
                    ourButton(
                        onPress: (){},
                        color:isCheck == true ? redColor : lightGrey,
                        textColor:whiteColor, title:singup).box.width(context.screenWidth-50).make(),
                    10.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        alreadyHaveAccount.text.color(fontGrey).make(),
                        login.text.color(redColor).make().onTap(() {
                          Get.back();
                        })
                      ],
                    )
                  ],
                ).box.white.rounded.padding(const EdgeInsets.all(16)).width(context.screenWidth - 70).shadowSm.make(),

              ],
            ),
          ),
        ));
  }
}
