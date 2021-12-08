import 'package:flutter/material.dart';
import 'package:mobileapp1/googleslides.dart';
import 'package:mobileapp1/main.dart';
import 'package:mobileapp1/media.dart';
import 'package:mobileapp1/pdf.dart';
import 'package:mobileapp1/powerpoint.dart';

void main() {
  runApp(MyApp());
} 

class MyApp extends StatelessWidget {
  // This widget is the root of the application.
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: Colors.green 
      ),
      home: MyHomePage(),
    );
  } 
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Virtual Learning Hub"),),
      body: Container(child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView(children: [
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>PowerPoint()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color:Colors.red,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(Icons.home,size: 50,color:Colors.white,),
              Text("Powerpoints",style: TextStyle(color: Colors.white,fontSize: 30),)
            ],),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>GoogleSlides()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color:Colors.yellow,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(Icons.search,size: 50,color:Colors.white,),
              Text("Google Slides",style: TextStyle(color: Colors.white,fontSize: 30),)
            ],  ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>PDF()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color:Colors.green,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(Icons.settings,size: 50,color:Colors.white,),
              Text("PDF",style: TextStyle(color: Colors.white,fontSize: 30),)
            ],  ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Media()));
            },
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color:Colors.grey,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(Icons.book,size: 50,color:Colors.white,),
              Text("Videos/Audios",style: TextStyle(color: Colors.white,fontSize: 30),)
            ],  ),
            ),
          ),

        ],
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
        ),
      ),),
    );
  }
}                