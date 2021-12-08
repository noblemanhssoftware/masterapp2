import 'package:flutter/material.dart';

class Data extends StatefulWidget {
  const Data({ Key? key }) : super(key: key);

  @override
  _DataState createState() => _DataState();
}

class _DataState extends State<Data> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Data collection with GIS"),),
        body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    " Here the ADMIN will inputs manually Data on work done",
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