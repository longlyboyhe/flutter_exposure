import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_exposure_app/pages/exposureAnimate.dart';
import 'package:flutter_exposure_app/pages/exposureDialog.dart';
import 'package:flutter_exposure_app/pages/exposureCustomScrollView.dart';
import 'package:flutter_exposure_app/pages/exposureGridView.dart';
import 'package:flutter_exposure_app/pages/exposureListView.dart';

void main() {
  if (Platform.isAndroid) {
    SystemUiOverlayStyle systemUiOverlayStyle =
    SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff4f4f4),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('测试曝光', style: TextStyle(fontSize: 20, color: Colors.black),
      )
      ),
      body:ListView(
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return ExposureDialog();
              }));
            },
            color: Colors.black,
            child: Text(
              '测试Dialog',
               style: TextStyle(fontSize: 14, color: Colors.white),
            ),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return ExposureAnimate();
              }));
            },
            color: Colors.black,
            child: Text(
              '测试Animate',
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return ExposureScroll();
              }));
            },
            color: Colors.black,
            child: Text(
              '测试ScrollView',
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return ExposureListView();
              }));
            },
            color: Colors.black,
            child: Text(
              '测试ListView',
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return ExposureGridView();
              }));
            },
            color: Colors.black,
            child: Text(
              '测试GridView',
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}