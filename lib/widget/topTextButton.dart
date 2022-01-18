import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class topText extends StatelessWidget {
  String text;
  bool isActive;
  Function onTap;
  topText(this.text, this.isActive, this.onTap, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: () {
          // do some things
          onTap();
        },
        child: Container(
          child: Column(
            children: [
              Text(
                text,
                style: GoogleFonts.aBeeZee(
                    color: isActive ? Colors.green : Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    letterSpacing: 2),
              ),
              const SizedBox(
                height: 5,
              ),
              Visibility(
                visible: isActive,
                child: Container(
                  height: 3,
                  width: 70,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
