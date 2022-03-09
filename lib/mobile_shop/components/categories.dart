import 'package:core/mobile_shop/models/Category.dart';
import 'package:core/responsive_email/constanats.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 84,
      child: ListView.separated(
          itemBuilder: (context, index) => CategoryCard(
            title: demo_categories[index].title,
            icon: demo_categories[index].icon,
            press: (){},
          ),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) => SizedBox(width: defaultPadding,),
          itemCount: demo_categories.length)
    );
  }
}


class CategoryCard extends StatelessWidget {
  const CategoryCard({Key? key,
    required this.icon,
    required this.title,
    required this.press}) : super(key: key);

   final String icon, title;
   final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: (){},
        style: OutlinedButton.styleFrom(
          shape:  RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius))
          )
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: defaultPadding / 2,
                  horizontal: defaultPadding / 4),
              child: SvgPicture.asset(icon),
            ),
            SizedBox(height: defaultPadding/2,),
            Text(title, style: Theme.of(context).textTheme.subtitle2,)

          ],
        ));
  }
}
