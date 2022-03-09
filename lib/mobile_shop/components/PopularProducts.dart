import 'package:core/mobile_shop/components/product_card.dart';
import 'package:core/mobile_shop/components/section_title.dart';
import 'package:core/mobile_shop/models/Product.dart';
import 'package:core/responsive_email/constanats.dart';
import 'package:flutter/material.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: SectionTitle(title: "Popular", pressSeeAll: (){}),
        ),
        SingleChildScrollView(
          physics: BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()
          ),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(demo_product.length,
                    (index) => ProductCard(
                    image: demo_product[index].image,
                    title: demo_product[index].title,
                    press: (){},
                    price: demo_product[index].price,
                    bgColor: demo_product[index].bgColor)),
          ),
        )
      ],
    );
  }
}
