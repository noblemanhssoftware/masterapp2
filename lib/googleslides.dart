import 'package:flutter/material.dart';

class GoogleSlides extends StatefulWidget {
  const GoogleSlides({ Key? key }) : super(key: key);

  @override
  _GoogleSlidesState createState() => _GoogleSlidesState();
}

class _GoogleSlidesState extends State<GoogleSlides> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Google Slides"),),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Google Slides will be uploaded here",
                    style: TextStyle(
                      fontSize: 30
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}