import 'package:flutter/material.dart';
import 'package:footstepcounter/widget/textWidget.dart';
import 'package:percent_indicator/percent_indicator.dart';

class circularDay extends StatelessWidget {
  String day;
  double percentage;
  Color colors;
  circularDay(this.day, this.percentage, this.colors, {Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.1,
        child: Column(
          children: [
            CircularPercentIndicator(
              radius: 30.0,
              lineWidth: 2.0,
              animation: true,
              percent: percentage,
              circularStrokeCap: CircularStrokeCap.round,
              progressColor: colors,
            ),
            SizedBox(
              height: 5,
            ),
            text(20, day)
          ],
        ),
      ),
    );
  }
}
