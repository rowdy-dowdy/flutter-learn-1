import 'package:flutter/material.dart';
import 'package:myapp/utils/config.dart';

class RecommemdPlants extends StatelessWidget {
  const RecommemdPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommemdPlantCard(
            image: "images/image_1.png",
            title: "Samantha",
            country: "Russia",
            price: 440,
            press: () {},
          ),
          RecommemdPlantCard(
            image: "images/image_2.png",
            title: "Samantha",
            country: "Russia",
            price: 440,
            press: () {},
          ),
          RecommemdPlantCard(
            image: "images/image_3.png",
            title: "Samantha",
            country: "Russia",
            price: 440,
            press: () {},
          ),
          SizedBox(width: kDefaultPadding,)
        ],
      ),
    );
  }
}

class RecommemdPlantCard extends StatelessWidget {
  const RecommemdPlantCard({
    Key? key,

    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.press
  }) : super(key: key);

  final String image, title, country;
  final int price;
  final Function() press;

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding,
        bottom: kDefaultPadding * 2.5
      ),
      width: size.width * 0.4,
      child: Column(
        children: [
          Image.asset(
            '$image',
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0,10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(.23)
                  )
                ]
              ),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$title\n".toUpperCase(),
                          style: Theme.of(context).textTheme.button
                        ),
                        TextSpan(
                          text: "$country".toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5)
                          )
                        )
                      ]
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context).textTheme.button?.copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}