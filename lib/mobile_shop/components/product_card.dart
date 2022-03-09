import 'package:core/dashboard/constants/constants.dart';
import 'package:core/responsive_email/constanats.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key,
    required this.image,
    required this.title,
    required this.press,
    required this.price,
    required this.bgColor}) : super(key: key);

  final String image, title;
  final VoidCallback press;
  final int price;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: 154,
        padding: const EdgeInsets.all(defaultPadding / 2),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius))
        ),
        child: Column(

          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
              ),
              child: Image.asset(image, height: 132,),
            ),
            SizedBox(height: defaultPadding,),
            Row(children: [
              Expanded(child: Text(title, style: const TextStyle(color: Colors.black) )),
              SizedBox(width: defaultPadding/4,),
              Text("\$" + price.toString(),
                  style: Theme.of(context).textTheme.subtitle2
              )
            ],)

          ],
        ),

      ),
    );
  }
}
