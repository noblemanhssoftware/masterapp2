import 'package:flutter/material.dart';

class PowerPoint extends StatefulWidget {
  const PowerPoint({ Key? key }) : super(key: key);

  @override
  _PowerPointState createState() => _PowerPointState();
}

class _PowerPointState extends State<PowerPoint> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("PowerPoint"),),
        body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    "PowerPoint files will be uploaded here",
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