import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myapp/utils/config.dart';

import 'feature_plants.dart';
import 'recommemd_plants.dart';
import 'title_with_more_button.dart';
import 'header_with_search_box.dart';

class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(),
          TitleWithMoreButton(
            title: "Recommended",
            press: () {},
          ),
          RecommemdPlants(),
          TitleWithMoreButton(
            title: "Feature Plants",
            press: () {},
          ),
          FeaturePlants(),
          SizedBox(height: kDefaultPadding,)
        ]
      ),
    );
  }
}

