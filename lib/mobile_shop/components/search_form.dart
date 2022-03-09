import 'package:core/dashboard/constants/constants.dart';
import 'package:core/responsive_email/constanats.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class SearchForm extends StatelessWidget {
  const SearchForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(child:
    TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: "Search Items....",
        border: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        errorBorder: outlineInputBorder,
        prefixIcon: Padding(
          padding: const EdgeInsets.all(14),
          child: SvgPicture.asset('assets/icons/Search.svg'),
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding, vertical: defaultPadding/2 ),
          child: SizedBox(
            width: 48,
            height: 48,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12)))
              ),
              onPressed: (){},
              child: SvgPicture.asset('assets/icons/Filter.svg'),
            ),
          ),
        )

      ),

    ));
  }
}


const OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(12)),
  borderSide: BorderSide.none,
);