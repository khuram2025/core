import 'package:core/responsive_email/constanats.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../models/Product.dart';
import 'color_dot.dart';


class MobileShopDetailScreen extends StatelessWidget {
  const MobileShopDetailScreen({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.bgColor,

      appBar: AppBar(
        leading: BackButton(color: Colors.black,),
        actions: [
          IconButton(onPressed: (){}, icon: CircleAvatar(
            backgroundColor: Colors.white,
            child: SvgPicture.asset("assets/icons/Heart.svg", height: 20,),
          ))
        ],
      ),
      body: Column(
        children: [
          Image.asset(product.image,
            height: MediaQuery.of(context).size.height*0.4, fit: BoxFit.cover,),
          SizedBox(height: defaultPadding * 1.5,),
          Expanded(child: Container(
            padding: EdgeInsets.fromLTRB(defaultPadding, defaultPadding*2, defaultPadding, defaultPadding),

            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(defaultBorderRadius*3),
                topRight: Radius.circular(defaultBorderRadius*3)

              )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(child: Text(
                      product.title,
                      style: Theme.of(context).textTheme.headline6,
                    )),
                    SizedBox(width: defaultPadding,),
                    Text("\$" + product.price.toString(),
                      style: Theme.of(context).textTheme.headline6,),

                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                  child: Text("A Henley shirt is a collarless pullover shirt, "
                      "by a round neckline and a placket about 3 to 5 inches"
                      " (8 to 13 cm) long and usually having 2–5 buttons."),
                ),
                Text("Colors", style: Theme.of(context).textTheme.subtitle2,),
                SizedBox(height: defaultPadding / 2),
                Row(
                  children: [
                    ColorDot(
                      color: Color(0xFFBEE8EA),
                      isActive: false,
                  ),
                    ColorDot(
                      color: Color(0xFF141B4A),
                      isActive: true,
                    ),
                    ColorDot(
                      color: Color(0xFFF4E5C3),
                      isActive: false,
                    ),
                  ],
                ),
                SizedBox(
                  height: defaultPadding,
                ),
                Center(
                  child: SizedBox(
                    height: 48,
                    width: 200,
                    child: ElevatedButton(
                      onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        primary: primaryColor,
                        shape: StadiumBorder()
                      ),
                      child: Text("Add to Cart"),
                    ),
                  ),
                )

              ],
            ),
          ))
        ],
      ),
    );
  }
}
