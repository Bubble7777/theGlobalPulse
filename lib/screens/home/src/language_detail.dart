import 'package:flutter/material.dart';
import 'package:flag/flag.dart';
import 'package:theglobalpulse/theme/color_theme.dart';
import 'package:theglobalpulse/screens/home/src/language.dart';

class LanguageDetail extends StatelessWidget {
  void _changeLanguage(Language language) {
    print(language.languageCode);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorPalette.white,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Row(
          textBaseline: TextBaseline.alphabetic,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'ЯЗЫК:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              width: 14,
            ),
            Flag('RU', height: 26.0, width: 30.0, fit: BoxFit.contain),
            SizedBox(
              width: 13,
            ),
            Expanded(
                child: Text(
              'РУССКИЙ',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400),
            )),
            DropdownButton<Language>(
              underline: SizedBox(),
              icon: Icon(
                Icons.chevron_right_sharp,
                color: ColorPalette.green_300,
                size: 30.0,
              ),
              onChanged: (Language language) {
                _changeLanguage(language);
              },
              items: Language.languageList()
                  .map<DropdownMenuItem<Language>>(
                    (e) => DropdownMenuItem<Language>(
                      value: e,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(
                            e.flag,
                            style: TextStyle(fontSize: 30),
                          ),
                          Text(e.name)
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
