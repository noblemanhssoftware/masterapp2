import 'package:flutter/material.dart';

class Service extends StatefulWidget {
  const Service({ Key? key }) : super(key: key);

  @override
  _ServiceState createState() => _ServiceState();
}

class _ServiceState extends State<Service> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Service Records Measurement"),),
        body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Service Record Measurements will be uploaded here",
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