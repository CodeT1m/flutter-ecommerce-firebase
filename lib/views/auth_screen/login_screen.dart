import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_firebase/constants/consts.dart';
import 'package:flutter_ecommerce_firebase/widgets_common/applogo_widget.dart';
import 'package:flutter_ecommerce_firebase/widgets_common/bg_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              (context.screenHeight * 0.01).heightBox,
              applogoWidget(),
              10.heightBox,
              "Log in to $appname".text.fontFamily(bold).white.size(18).make(),
            ],
          ),
        ),
      ),
    );
  }
}
