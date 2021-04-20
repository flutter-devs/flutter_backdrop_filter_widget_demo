
import 'dart:ui';

import 'package:flutter/material.dart';

class TextBlur extends StatefulWidget {
  @override
  _TextBlurState createState() => _TextBlurState();
}

class _TextBlurState extends State<TextBlur> {
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
          Positioned(
            top: 250,
            left: 0,
            right: 0,
            child: Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 10.0,
                    sigmaY: 10.0,
                  ),
                  child: Container(
                    padding: EdgeInsets.all(24),
                    color: Colors.white.withOpacity(0.5),
                    child: Text(
                      "Flutter Dev's",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}