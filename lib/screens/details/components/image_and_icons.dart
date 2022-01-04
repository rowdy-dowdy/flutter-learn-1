import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myapp/utils/config.dart';

import 'icon_card.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 2),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton( 
                        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        icon: SvgPicture.asset('icons/back_arrow.svg'),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Spacer(),
                    IconCard(icon: 'icons/sun.svg',),
                    IconCard(icon: 'icons/icon_2.svg',),
                    IconCard(icon: 'icons/icon_3.svg',),
                    IconCard(icon: 'icons/icon_4.svg',)
                  ],
                ),
              )
            ),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(63),
                  bottomLeft: Radius.circular(63)
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0,10),
                    blurRadius: 60,
                    color: kPrimaryColor.withOpacity(.29)
                  )
                ],
                image: DecorationImage(
                  image: AssetImage('images/img.png'),
                  fit: BoxFit.cover,
                  alignment: Alignment.centerLeft
                )
              ),
            )
          ]
        ),
      ),
    );
  }
}