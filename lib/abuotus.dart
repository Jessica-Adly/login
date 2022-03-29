import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

class abuotus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon:Icon(Icons.arrow_back_ios),
          onPressed:() => Navigator.of(context).pop(),
        ),
        title: Text("About Us"),
        centerTitle: true,
      ),
    );
  }
}