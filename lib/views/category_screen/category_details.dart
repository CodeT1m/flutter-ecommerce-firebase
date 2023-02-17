import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_firebase/constants/consts.dart';
import 'package:flutter_ecommerce_firebase/views/category_screen/items_details.dart';
import 'package:flutter_ecommerce_firebase/widgets_common/bg_widget.dart';
import 'package:get/get.dart';

class CategoryDetails extends StatelessWidget {
  final String? title;
  const CategoryDetails({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        appBar: AppBar(title: title!.text.fontFamily(bold).white.make()),
        body: Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              // SingleChildScrollView(child: ,),
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      6,
                      (index) => "Baby Clothing"
                          .text
                          .size(12)
                          .fontFamily(semibold)
                          .color(darkFontGrey)
                          .makeCentered()
                          .box
                          .white
                          .rounded
                          .size(150, 60)
                          .margin(const EdgeInsets.symmetric(horizontal: 4))
                          .make()),
                ),
              ),

              20.heightBox,

              Expanded(
                child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 8,
                            crossAxisSpacing: 8,
                            mainAxisExtent: 250,),
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            imgP5,
                            height: 150,
                            width: 200,
                            fit: BoxFit.cover,
                          ),
                          // const Spacer(),
                          "Laptop 4GB/64GB"
                              .text
                              .fontFamily(semibold)
                              .color(darkFontGrey)
                              .make(),
                              10.heightBox,
                        ],
                      )
                          .box
                          .white
                          .margin(const EdgeInsets.symmetric(horizontal: 4))
                          .roundedSM
                          .outerShadowSm
                          .padding(const EdgeInsets.all(12))
                          .make().onTap(() {
                            Get.to(()=>ItemDetails(title: title));
                          });
                    }),
              )
            ],
          ),
        ),
      ), // AppBar
    ); // Scaffold
  }
}
