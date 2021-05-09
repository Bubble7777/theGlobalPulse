import 'package:flutter/material.dart';
import 'package:theglobalpulse/theme/color_theme.dart';

class WelcomeDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        alignment: Alignment.center,
        padding: EdgeInsets.only(bottom: 15.0),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [ColorPalette.green_200, ColorPalette.blue_200])),
        child: Column(
          children: [
            SizedBox(
              height: 15.0,
            ),
            Text(
              'Welcome',
              style: TextStyle(color: ColorPalette.white, fontSize: 35.0),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'ALREADY REGISTERED OR HAVE QR CODE?',
              style: TextStyle(color: ColorPalette.white, fontSize: 16.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    onPrimary: Colors.black,
                    primary: Colors.white,
                    side: BorderSide(width: 1, color: ColorPalette.green_300)),
                icon: Icon(
                  Icons.login,
                  color: ColorPalette.green_300,
                ),
                onPressed: () {},
                label: Text('Login/QRcode'))
          ],
        ),
      ),
    );
  }
}
