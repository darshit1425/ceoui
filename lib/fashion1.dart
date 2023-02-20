import 'package:flutter/material.dart';

class cloth extends StatefulWidget {
  const cloth({Key? key}) : super(key: key);

  @override
  State<cloth> createState() => _clothState();
}

class _clothState extends State<cloth> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(centerTitle: true),
    ));
  }
}
