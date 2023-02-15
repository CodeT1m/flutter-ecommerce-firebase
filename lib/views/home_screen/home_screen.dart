import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_ecommerce_firebase/constants/consts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(child: Column(children: [
        Container(
          color: lightGrey,
          alignment: Alignment.center,
          height: 60,
          child: TextFormField(
            decoration: const InputDecoration(
              suffixIcon: Icon(Icons.search),
              filled: true,
              fillColor: whiteColor,
              hintText: searchanyting,
              hintStyle: TextStyle(color: textfieldGrey)
            ),
          ),
        ),
        VxSwiper.builder(itemCount: slidersList.length, itemBuilder: (context, index){
          return Container();
        })
      ],)),
    );
  }
}