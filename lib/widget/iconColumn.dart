import 'package:flutter/material.dart';
import 'package:footstepcounter/widget/textWidget.dart';

class iconColumn extends StatelessWidget {
  Icon icons;
  String title;
  iconColumn(this.icons, this.title, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, left: 30),
      child: Column(children: [
        Container(
          color: Colors.transparent,
          child: icons,
        ),
        text(20, title)
      ]),
    );
  }
}
