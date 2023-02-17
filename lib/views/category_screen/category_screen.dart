import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_ecommerce_firebase/constants/consts.dart';
import 'package:flutter_ecommerce_firebase/views/category_screen/category_details.dart';
import 'package:flutter_ecommerce_firebase/widgets_common/bg_widget.dart';
import 'package:get/get.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        appBar: AppBar(title: categories.text.fontFamily(bold).white.make()),
        body: Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              // SingleChildScrollView(child: ,),

              Expanded(
                child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 8,
                            crossAxisSpacing: 8,
                            mainAxisExtent: 200),
                    itemBuilder: (context, index) {
                      return Column()
                          .box
                          .white
                          .rounded
                          .clip(Clip.antiAlias)
                          .outerShadowSm
                          .make()
                          .onTap(() {
                        Get.to(() =>
                            CategoryDetails(title: categoriesList[index]));
                      });
                    }),
              )
            ],
          ),
        ),
      ), // AppBar
    );
  }
}
