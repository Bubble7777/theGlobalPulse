import 'package:theglobalpulse/theme/color_theme.dart';
import 'package:flutter/material.dart';

class BigButtonDetail extends StatelessWidget {
  const BigButtonDetail({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var forYesbuttonStyle = ButtonStyle(
        minimumSize: MaterialStateProperty.all(Size(200, 50)),
        elevation: MaterialStateProperty.all(0),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
            side: BorderSide(color: ColorPalette.greyBorder),
            borderRadius: (BorderRadius.only(
              topRight: const Radius.circular(0.0),
              bottomRight: const Radius.circular(0.0),
            )))),
        backgroundColor: MaterialStateProperty.all(ColorPalette.green_300));
    return Center(
      child: ElevatedButton.icon(
          style: forYesbuttonStyle,
          onPressed: () {},
          icon: Icon(
            Icons.done,
            size: 30,
          ),
          label: Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: Text(
                'Confirm',
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.w400),
              ),
            ),
          )),
    );
  }
}
