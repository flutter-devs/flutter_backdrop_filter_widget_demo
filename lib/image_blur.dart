
import 'dart:ui';
import 'package:flutter/material.dart';

class ImageBlur extends StatefulWidget {
  @override
  _ImageBlurState createState() => _ImageBlurState();
}

class _ImageBlurState extends State<ImageBlur> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        title: Text("Flutter BackdropFilter Widget Demo"),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset("assets/devs.jpg",fit: BoxFit.contain,),
          Positioned.fill(
            child: Center(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 10.0,
                  sigmaY: 10.0,
                ),
                child: Container(
                  color: Colors.black.withOpacity(0.2),

                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}