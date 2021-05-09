import 'package:flutter/material.dart';

class ImageDetails extends StatelessWidget {
  const ImageDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          padding: EdgeInsets.only(left: 3),
          width: 165,
          height: 120,
          child: Image.asset(
            'assets/images/puslecheck.jpg',
            fit: BoxFit.fill,
          ),
        ),
        Container(
          padding: EdgeInsets.only(right: 5),
          width: 168,
          height: 120,
          child: Image.asset(
            'assets/images/aparat.jpg',
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }
}
