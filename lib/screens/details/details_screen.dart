import 'package:flutter/material.dart';
import 'package:myapp/screens/details/components/body.dart';
import 'package:myapp/widgets/bottom_navbar.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}