import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myapp/utils/config.dart';

import 'image_and_icons.dart';
import 'title_and_price.dart';

class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(),
          TitleAndPrice(
            title: "Agdsa",
            country: "ffsd",
            price: 440,
          ),
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  width: size.width / 2,
                  height: 84,
                  child: TextButton(
                    onPressed: (){},
                    style: TextButton.styleFrom(
                      primary: kTextColor,
                      backgroundColor: kPrimaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20)
                        )
                      ),
                    ),
                    child: Text(
                      "Buy now",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: (){},
                    child: Text(
                      "Description",
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: kDefaultPadding * 2,
          )
        ],
      ),
    );
  }
}

