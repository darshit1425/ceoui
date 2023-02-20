import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'ceolist.dart';
import 'fashion1.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => Ceo(),
      },
    ),
  );
}