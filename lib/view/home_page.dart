import 'package:flutter/material.dart';
import 'package:mvp_app/model/model.dart';
import 'package:mvp_app/presenter/presenter.dart';
import 'package:mvp_app/view/view.dart';

class HomePage extends StatefulWidget {
  final String title;
  final AppPresenter presenter;

  HomePage(this.presenter, this.title);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> implements AppView {

  late AppModel _appModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title
        ),
      ),
      body: Column(
        children: [
          TextField(
            controller: _appModel.controller,
          ),
          TextField(
            controller: _appModel.controller2,
          ),
          RaisedButton(
            onPressed: (){
              this.widget.presenter.buttonClick();
            },
            child: Icon(
              Icons.add
            ),
          ),
          Text(
            "Result : ${_appModel.result}",
            style: TextStyle(
              fontSize: 30
            ),

          )
        ],
      ),
    );
  }

  @override
  void refreshData(AppModel model) {
    setState(() {
      this._appModel = model;
    });
  }

  @override
  void initState() {
    super.initState();
    this.widget.presenter.view = this;
  }


}
