import 'package:flutter/material.dart';
import 'package:footstepcounter/dahboard.dart';

import 'package:footstepcounter/footCounter.dart';

void main() => runApp(
      const MaterialApp(
        home: dashboard(),
        debugShowCheckedModeBanner: false,
        title: "Foot step Counter",
      ),
    );
