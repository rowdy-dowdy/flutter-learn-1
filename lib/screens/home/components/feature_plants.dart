import 'package:flutter/material.dart';
import 'package:myapp/utils/config.dart';

class FeaturePlants extends StatelessWidget {
  const FeaturePlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturePlantCard(
            image: "images/bottom_img_1.png",
            press: () {},
          ),
          FeaturePlantCard(
            image: "images/bottom_img_2.png",
            press: () {},
          ),
          SizedBox(width: kDefaultPadding,)
        ],
      ),
    );
  }
}

class FeaturePlantCard extends StatelessWidget {
  const FeaturePlantCard({
    Key? key,
    required this.image,
    required this.press
  }) : super(key: key);

  final String image;
  final Function() press;

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onDoubleTap: press,
      child: Container(
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding,
          bottom: kDefaultPadding,
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage('$image'),
            fit: BoxFit.cover
          )
        ),
      ),
    );
  }
}