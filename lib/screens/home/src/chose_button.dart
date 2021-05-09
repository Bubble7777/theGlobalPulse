import 'package:theglobalpulse/theme/color_theme.dart';
import 'package:flutter/material.dart';

class ButtonDetail extends StatefulWidget {
  ButtonDetail({Key key}) : super(key: key);

  @override
  _ButtonDetailState createState() => _ButtonDetailState();
}

class _ButtonDetailState extends State<ButtonDetail> {
  @override
  Widget build(BuildContext context) {
    var forYesbuttonStyle = ButtonStyle(
        elevation: MaterialStateProperty.all(0),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
            side: BorderSide(color: ColorPalette.greyBorder),
            borderRadius: (BorderRadius.only(
              topRight: const Radius.circular(0.0),
              bottomRight: const Radius.circular(0.0),
            )))),
        backgroundColor: MaterialStateProperty.all(ColorPalette.green_300));
    var forNobuttonStyle = ButtonStyle(
        elevation: MaterialStateProperty.all(0),
        backgroundColor: MaterialStateProperty.all(ColorPalette.white),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
            side: BorderSide(color: ColorPalette.greyBorder),
            borderRadius: (BorderRadius.only(
              topLeft: const Radius.circular(0.0),
              bottomLeft: const Radius.circular(0.0),
            )))));
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'НУЖНА ЛИ ВАМ ПОМОЩЬ?',
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
            ),
            Row(
              children: [
                ElevatedButton.icon(
                    style: forYesbuttonStyle,
                    onPressed: () {},
                    icon: Icon(Icons.done),
                    label: Text('YES')),
                ElevatedButton.icon(
                    style: forNobuttonStyle,
                    onPressed: () {},
                    icon: Icon(
                      Icons.clear,
                      color: Colors.black,
                    ),
                    label: Text(
                      'NO',
                      style: TextStyle(color: Colors.black),
                    )),
              ],
            ),
          ],
        ),
        SizedBox(
          width: 30,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'ВАС БЕСПОКОИТ БОЛЬ?',
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
            ),
            Row(
              children: [
                ElevatedButton.icon(
                    style: forYesbuttonStyle,
                    onPressed: () {},
                    icon: Icon(Icons.done),
                    label: Text('YES')),
                ElevatedButton.icon(
                    style: forNobuttonStyle,
                    onPressed: () {},
                    icon: Icon(
                      Icons.clear,
                      color: Colors.black,
                    ),
                    label: Text(
                      'NO',
                      style: TextStyle(color: Colors.black),
                    )),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
