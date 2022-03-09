import 'package:core/mobile_shop/components/product_card.dart';
import 'package:core/mobile_shop/components/section_title.dart';
import 'package:core/mobile_shop/models/Product.dart';
import 'package:core/responsive_email/constanats.dart';
import 'package:flutter/material.dart';

class NewArivalProducts extends StatelessWidget {
  const NewArivalProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: SectionTitle(
            title: "New Arival",
            pressSeeAll: (){},
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()
          ),
          child: Row(
            children: List.generate(
                demo_product.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: defaultPadding),
                      child: ProductCard(
                        bgColor: demo_product[index].bgColor,
                        title: demo_product[index].title,
                        image: demo_product[index].image,
                        price: demo_product[index].price,
                        press: (){},

                      ),
                    )),
          ),
        )
      ],
    );
  }
}
