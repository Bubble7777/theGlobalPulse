import 'package:flutter/material.dart';
import 'package:theglobalpulse/theme/color_theme.dart';

class TextDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Text(
            'ДЛЯ БЫСТРОГО ЗНАКОМСТВА И ДОСТУПА К РЕГИСТРАЦИИ, ПАРУ СЛОВ О СЕБЕ:',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                'Вы можете заменить вопрос, нажав на кнопку ',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),
              ),
              Icon(
                Icons.sync,
                color: ColorPalette.green_300,
                size: 25,
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Text('НАСТРОЕНИЕ СЕЙЧАС / ОБЩЕЕ САМОЧУВСТВИЕ',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
          )
        ],
      ),
    );
  }
}
