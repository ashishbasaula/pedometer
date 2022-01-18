import 'package:flutter/material.dart';
import 'package:footstepcounter/widget/containerButton.dart';
import 'package:footstepcounter/widget/dailyAverage.dart';
import 'package:footstepcounter/widget/imageContainer.dart';
import 'package:footstepcounter/widget/textWidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class dashboardCard extends StatelessWidget {
  int steps;
  double miles, calories, duration;
  dashboardCard(this.steps, this.miles, this.calories, this.duration,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.5,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: const Color(0xff1D3768),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Container(
                      child: Column(
                        children: [
                          // this is for the count in foot step and edit button
                          Container(
                            width: 150,
                            child: Row(
                              children: [
                                text(50, steps.toString()),
                                SizedBox(
                                  width: 10,
                                ),
                                // this is for edit icon
                                const Icon(
                                  Icons.edit,
                                  color: Colors.white,
                                  size: 20,
                                )
                              ],
                            ),
                          ),
                          // this is for the pause button
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 30,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(70),
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Text(
                                  "Pause",
                                  style: GoogleFonts.aBeeZee(
                                    color: Colors.green,
                                    fontSize: 30,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          // this is the botton image
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 130,
                  ),
                  Expanded(
                    flex: 1,
                    child: containerButton(const Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 50,
                    )),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: LinearPercentIndicator(
                percent: 0.8,
                progressColor: Colors.green,
                lineHeight: 20,
                animation: true,
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            // this is botton part
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                imageContainer(
                    "assets/locations.png", miles.toStringAsFixed(3), "Miles"),
                imageContainer("assets/calories.png",
                    calories.toStringAsFixed(3), "Calories"),
                imageContainer("assets/stopwatch.png",
                    duration.toStringAsFixed(3), "Duration"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
