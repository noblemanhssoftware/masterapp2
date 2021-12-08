import 'dart:developer';
import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mobileapp1/data.dart';
import 'package:mobileapp1/model/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mobileapp1/screens/learning_screen.dart';
import 'package:mobileapp1/screens/service.dart';
import 'login_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();

  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value) {
      this.loggedInUser = UserModel.fromMap(value.data());
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MasterApp Project"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 150,
                child: Image.asset("assets/promane.png", fit: BoxFit.contain),
              ),
              Text(
                "FEATURES",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
              ),
               InkWell(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
                 },
                child: Text("Virtual Learning Hub",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.green),
                ),
              ),
                InkWell(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>(Data())));
                 },
                child: Text("Data Collection with GIS",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.green),
                ),
              ),
                InkWell(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>Service()));
                 },
                child: Text("Service Records Measurement",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.green),
                ),
              ),
              
              
              
              
              


    

              
              
     
              ActionChip(
                  label: Text("Logout"),
                  onPressed: () {
                    logout(context);
                  }),
            ],
          ),
        ),
      ),
    );
  }

  // the logout function
  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoginScreen()));
  }
}