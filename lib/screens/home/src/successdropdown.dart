import 'package:theglobalpulse/theme/color_theme.dart';
import 'package:flutter/material.dart';

class SuccsessDropDown extends StatefulWidget {
  SuccsessDropDown({Key key}) : super(key: key);

  @override
  _SuccsessDropDownState createState() => _SuccsessDropDownState();
}

class _SuccsessDropDownState extends State<SuccsessDropDown> {
  List _sucsessList = [
    "Eжедневность / Успешность / Здоровье",
    "Еженедельность / Успех / Любовь",
    "Ежемесячность / Удача / Карьера",
  ];
  List<DropdownMenuItem<String>> _dropDownMenuItems;
  String _currentSucsess;
  List<DropdownMenuItem<String>> getDropDownMenuItems() {
    List<DropdownMenuItem<String>> items = [];
    for (String sucsess in _sucsessList) {
      items.add(DropdownMenuItem(value: sucsess, child: Text(sucsess)));
    }

    return items;
  }

  @override
  void initState() {
    _dropDownMenuItems = getDropDownMenuItems();
    _currentSucsess = _dropDownMenuItems[0].value;
    _dropDownMenuItems = getDropDownMenuItems();
    _currentSucsess = _dropDownMenuItems[0].value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'НУЖНЫ ЛИ ВАМ ПРОГНОЗЫ?',
          style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.only(
            left: 24.0,
          ),
          decoration: BoxDecoration(
              border: Border.all(color: ColorPalette.green_300),
              borderRadius: BorderRadius.circular(2)),
          child: DropdownButton(
            icon: Icon(
              Icons.unfold_more,
              color: ColorPalette.green_300,
            ),
            iconSize: 30,
            underline: SizedBox(),
            value: _currentSucsess,
            items: _dropDownMenuItems,
            onChanged: changedDropDownItem,
          ),
        )
      ],
    );
  }

  void changedDropDownItem(String selected) {
    setState(() {
      _currentSucsess = selected;
    });
  }
}
