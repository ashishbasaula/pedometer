import 'package:flutter/material.dart';
import 'package:footstepcounter/widget/dayCount.dart';
import 'package:footstepcounter/widget/textWidget.dart';

class dailyAverage extends StatelessWidget {
  const dailyAverage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.23,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: const Color(0xff1D3768),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: text(20, "Daily average :")),
            ),
            const SizedBox(
              height: 50,
            ),
            Align(
              alignment: Alignment.center,
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  circularDay("S", 0.7, Colors.red),
                  circularDay("M", 0.1, Colors.cyan),
                  circularDay("TU", 0.2, Colors.teal),
                  circularDay("W", 0.3, Colors.amber),
                  circularDay("TH", 0.4, Colors.green),
                  circularDay("FRI", 0.5, Colors.indigo),
                  circularDay("SAT", 0.6, Colors.purple),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
