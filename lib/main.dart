import 'package:flutter/material.dart';
import 'package:mvp_app/view/home_page.dart';
import 'package:mvp_app/presenter/presenter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo MVP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(new BasicAppPresenter(), 'Flutter Demo MVP'),
    );
  }
}