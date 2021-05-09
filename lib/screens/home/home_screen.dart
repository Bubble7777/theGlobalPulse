import 'package:flutter/material.dart';
import 'package:theglobalpulse/screens/home/src/images_detail.dart';
import 'package:theglobalpulse/screens/home/src/language_detail.dart';
import 'package:theglobalpulse/screens/home/src/welcome_detail.dart';
import 'package:theglobalpulse/screens/home/src/text_detail.dart';
import 'package:theglobalpulse/screens/home/src/slider_detail.dart';
import 'package:theglobalpulse/screens/home/src/slider_stress.dart';
import 'package:theglobalpulse/screens/home/src/radio_button.dart';
import 'package:theglobalpulse/screens/home/src/chose_button.dart';
import 'package:theglobalpulse/screens/home/src/dropdown.dart';
import 'package:theglobalpulse/screens/home/src/successdropdown.dart';
import 'package:theglobalpulse/screens/home/src/textfield_detail.dart';
import 'package:theglobalpulse/screens/home/src/buttons.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var sizedBox20 = SizedBox(
      height: 20,
    );
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          WelcomeDetail(),
          LanguageDetail(),
          TextDetail(),
          SliderDetail(),
          SliderStressDetail(),
          RadioButtons(),
          ButtonDetail(),
          sizedBox20,
          DropDown(),
          sizedBox20,
          SuccsessDropDown(),
          sizedBox20,
          TextFieldDetail(),
          sizedBox20,
          ImageDetails(),
          sizedBox20,
          BigButtonDetail(),
          sizedBox20,
        ],
      ),
    ));
  }
}
