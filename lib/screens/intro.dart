import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'home.dart';

class IntroScreen extends StatelessWidget {
  List<PageViewModel> getPages() {
    return [
      PageViewModel(
        image: Image.asset(
          'images/11.jpeg',
          fit: BoxFit.fitWidth,
        ),
        title: 'Burn Diagnosis',
        body: 'Using the image of the burn by using the camera or gallery helps you know the degree of your burn',
      ),
      PageViewModel(
        image: Image.asset(
          'images/14.jpg',
          fit: BoxFit.fitWidth,
        ),
        title: 'frist aid',
        body:
        'The application will respond to you with the appropriate initial needs for your burning situation',
      ),
      PageViewModel(
        image: Image.asset('images/13.jpg', fit: BoxFit.fitWidth),
        title: 'treatment',
        body:
        'The application will provide to you the best treatment ways until your recovery is complete',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        done: Text(
          'Done',
          style: TextStyle(color: Colors.black),
        ),
        onDone: () {
          Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>Home()));
        },
        pages: getPages(),
      ),
    );
  }
}