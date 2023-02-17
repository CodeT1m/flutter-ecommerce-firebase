import 'package:flutter_ecommerce_firebase/constants/consts.dart';

class ItemDetails extends StatelessWidget {
  final String? title;
  const ItemDetails({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
        title: title!.text.color(darkFontGrey).fontFamily(bold).make(),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.share, color: darkFontGrey,)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.favorite_outline)),
        ],
      ),
    );
  }
}
