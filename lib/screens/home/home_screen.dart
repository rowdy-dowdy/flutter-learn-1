import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myapp/screens/home/components/body.dart';
import 'package:myapp/utils/config.dart';
import 'package:myapp/widgets/bottom_navbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: BottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("icons/menu.svg"),
        onPressed: () {},
      ),
    );
  }
}