import 'package:flutter/material.dart';
import 'package:footstepcounter/widget/textWidget.dart';

class imageContainer extends StatelessWidget {
  String imagePath, number, textTitle;
  imageContainer(this.imagePath, this.number, this.textTitle, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.width * 0.29,
      child: Column(
        children: [
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.fill,
              ),
            ),
          ),
          // text
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: text(16, number),
          ),

          // this is another text
          text(12, textTitle),
        ],
      ),
    );
  }
}
