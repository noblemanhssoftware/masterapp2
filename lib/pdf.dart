import 'package:flutter/material.dart';

class PDF extends StatefulWidget {
  const PDF({ Key? key }) : super(key: key);

  @override
  _PDFState createState() => _PDFState();
}

class _PDFState extends State<PDF> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("PDFs"),),
        body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    "PDF files will be uploaded here",
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