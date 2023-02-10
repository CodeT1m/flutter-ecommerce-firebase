import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_ecommerce_firebase/constants/consts.dart';
import 'package:flutter_ecommerce_firebase/widgets_common/const_widgets.dart';
import 'package:get/get.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool? isCheck = false;
  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            children: [
              (context.screenHeight * 0.1).heightBox,
              applogoWidget(),
              10.heightBox,
              "Join the $appname".text.fontFamily(bold).white.size(18).make(),
              15.heightBox,
              Column(
                children: [
                  customTextField(hint: nameHint, title: name),
                  customTextField(hint: emailHint, title: email),
                  customTextField(hint: passwordHint, title: password),
                  customTextField(hint: passwordHint, title: retypePassword),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {}, child: forgetPass.text.make()),
                  ),
                  Row(
                    children: [
                      Checkbox(
                          checkColor: redColor,
                          value: false,
                          onChanged: (newValue) {
                            setState(() {
                              isCheck = newValue;
                            });
                          }),
                      10.widthBox,
                      Expanded(
                        child: RichText(
                            text: const TextSpan(
                          children: [
                            TextSpan(
                                text: "I agree to the ",
                                style: TextStyle(
                                  fontFamily: regular,
                                  color: fontGrey,
                                )),
                            TextSpan(
                                text: termAndCond,
                                style: TextStyle(
                                  fontFamily: bold,
                                  color: redColor,
                                )),
                            TextSpan(
                                text: " & ",
                                style: TextStyle(
                                  fontFamily: regular,
                                  color: fontGrey,
                                )),
                            TextSpan(
                                text: privacyPolicy,
                                style: TextStyle(
                                  fontFamily: regular,
                                  color: redColor,
                                )),
                          ],
                        )),
                      )
                    ],
                  ),
                  5.heightBox,
                  ourButton(
                          color: isCheck == true ? redColor : lightGrey,
                          title: signup,
                          textColor: whiteColor,
                          onPress: () {})
                      .box
                      .width(context.screenWidth - 50)
                      .make(),
                ],
              )
                  .box
                  .white
                  .rounded
                  .padding(const EdgeInsets.all(16))
                  .width(context.screenWidth - 70)
                  .shadowSm
                  .make(),
              10.heightBox,
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: alreadyHaveAccount,
                      style: TextStyle(fontFamily: bold, color: redColor),
                    ),
                    TextSpan(
                        text: login,
                        style: TextStyle(fontFamily: bold, color: redColor))
                  ],
                ),
              ).onTap(() {
                Get.back();
              }),
            ],
          ),
        ),
      ),
    );
  }
}
