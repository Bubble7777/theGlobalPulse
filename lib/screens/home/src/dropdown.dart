import 'package:theglobalpulse/theme/color_theme.dart';
import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  DropDown({Key key}) : super(key: key);

  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  List _activList = [
    "Тренированный",
    "Активный",
    "Неактивный ",
  ];
  List _futureList = [
    "Устойчивая стабильность",
    "Стабильность",
    "Нищета",
  ];
  List<DropdownMenuItem<String>> _dropDownMenuItems;
  List<DropdownMenuItem<String>> _dropTwoDownMenuItems;
  String _currentActiv;
  String _currentFuture;

  List<DropdownMenuItem<String>> getDropDownMenuItems() {
    List<DropdownMenuItem<String>> items = [];
    for (String activ in _activList) {
      items.add(DropdownMenuItem(value: activ, child: Text(activ)));
    }

    return items;
  }

  List<DropdownMenuItem<String>> getTwoDropDownMenuItems() {
    List<DropdownMenuItem<String>> items = [];
    for (String future in _futureList) {
      items.add(DropdownMenuItem(value: future, child: Text(future)));
    }
    return items;
  }

  @override
  void initState() {
    _dropDownMenuItems = getDropDownMenuItems();
    _currentActiv = _dropDownMenuItems[0].value;
    _dropTwoDownMenuItems = getTwoDropDownMenuItems();
    _currentFuture = _dropTwoDownMenuItems[0].value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.only(
              left: 26.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'НАСКОЛЬКО ВЫ АКТИВНЫЙ?',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 12.0,
                  ),
                  width: 165,
                  decoration: BoxDecoration(
                      border: Border.all(color: ColorPalette.green_300),
                      borderRadius: BorderRadius.circular(2)),
                  child: DropdownButton(
                    isExpanded: true,
                    icon: Icon(
                      Icons.unfold_more,
                      color: ColorPalette.green_300,
                    ),
                    iconSize: 30,
                    underline: SizedBox(),
                    value: _currentActiv,
                    items: _dropDownMenuItems,
                    onChanged: changedDropDownItem,
                  ),
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.only(
              left: 16.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'ОЦЕНИТЕ ВАШИ ПЕРСПЕКТИВЫ?',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.center,
                  width: 165,
                  padding: EdgeInsets.only(
                    left: 20.0,
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(color: ColorPalette.green_300),
                      borderRadius: BorderRadius.circular(2)),
                  child: DropdownButton(
                    isExpanded: true,
                    icon: Icon(
                      Icons.unfold_more,
                      color: ColorPalette.green_300,
                    ),
                    iconSize: 30,
                    underline: SizedBox(),
                    value: _currentFuture,
                    items: _dropTwoDownMenuItems,
                    onChanged: changedTwoDropDownItem,
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  void changedDropDownItem(String selected) {
    setState(() {
      _currentActiv = selected;
    });
  }

  void changedTwoDropDownItem(String selected) {
    setState(() {
      _currentFuture = selected;
    });
  }
}
