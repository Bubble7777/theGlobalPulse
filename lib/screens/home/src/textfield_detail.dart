import 'package:theglobalpulse/theme/color_theme.dart';
import 'package:flutter/material.dart';

class TextFieldDetail extends StatefulWidget {
  TextFieldDetail({Key key}) : super(key: key);

  @override
  _TextFieldDetailState createState() => _TextFieldDetailState();
}

class _TextFieldDetailState extends State<TextFieldDetail> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Text(
            'ДЛЯ ФОРМИРОВАНИЯ ОТЧЁТА ЗАПОЛНИТЕ',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 26, right: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('HEART RATE, BPM'),
                  SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                      width: 159,
                      height: 45,
                      child: TextField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.all(10),
                            enabled: true,
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: ColorPalette.green_300,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(3)),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: ColorPalette.green_300,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(3))),
                      ))
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ' BLOOD PRESSURE, HR/BP',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Container(
                          padding: EdgeInsets.all(0),
                          width: 75,
                          height: 45,
                          child: TextField(
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                enabled: true,
                                isDense: true,
                                contentPadding: EdgeInsets.all(10),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: ColorPalette.green_300,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(3)),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: ColorPalette.green_300,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(3))),
                          )),
                    ),
                    SizedBox(
                        width: 75,
                        height: 45,
                        child: TextField(
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              isDense: true,
                              contentPadding: EdgeInsets.all(10),
                              enabled: true,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: ColorPalette.green_300,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(3)),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: ColorPalette.green_300,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(3))),
                        )),
                  ],
                )
              ],
            ),
          ],
        )
      ],
    );
  }
}
