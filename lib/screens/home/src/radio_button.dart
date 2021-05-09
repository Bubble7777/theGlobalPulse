import 'package:flutter/material.dart';
import 'package:theglobalpulse/theme/color_theme.dart';

class RadioButtons extends StatefulWidget {
  RadioButtons({Key key}) : super(key: key);

  @override
  _RadioButtonsState createState() => _RadioButtonsState();
}

class _RadioButtonsState extends State<RadioButtons> {
  Color bulbColor = ColorPalette.green_300;
  String colorGroupValue = '';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'КТО ВЫ В КОМАНДЕ?',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                width: 190,
              ),
              Icon(
                Icons.sync,
                color: ColorPalette.green_300,
                size: 25,
              )
            ],
          ),
          Row(
            children: [
              Container(
                child: Row(
                  children: [
                    Radio(
                        value: 'Волонтер',
                        groupValue: colorGroupValue,
                        onChanged: (val) {
                          colorGroupValue = val;
                          setState(() {});
                        }),
                    Text(
                      'Волонтер',
                      style: TextStyle(fontSize: 11),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Radio(
                        value: 'Ремеслиник',
                        groupValue: colorGroupValue,
                        onChanged: (val) {
                          colorGroupValue = val;
                          setState(() {});
                        }),
                    Text(
                      'Ремеслиник',
                      style: TextStyle(fontSize: 11),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Radio(
                        value: 'Учитель  ',
                        groupValue: colorGroupValue,
                        onChanged: (val) {
                          colorGroupValue = val;
                          setState(() {});
                        }),
                    Text(
                      'Учитель  Исследователь',
                      style: TextStyle(fontSize: 11),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
