import 'package:flutter/material.dart';

class Media extends StatefulWidget {
  const Media({ Key? key }) : super(key: key);

  @override
  _MediaState createState() => _MediaState();
}


class _MediaState extends State<Media> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Videos/Audios"),),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Audio/Video files will be uploaded here",
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


