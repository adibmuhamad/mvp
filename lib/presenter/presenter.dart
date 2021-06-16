import 'package:mvp_app/view/view.dart';
import 'package:mvp_app/model/model.dart';

class AppPresenter{
  set view(AppView value){}
  void buttonClick(){}
}

class BasicAppPresenter implements AppPresenter{
  late AppModel _model;
  late AppView _view;

  BasicAppPresenter() {
    this._model = AppModel();
  }

  @override
  set view(AppView value) {
    _view = value;
    this._view.refreshData(this._model);
  }

  @override
  void buttonClick() {
    int v1 = int.parse(this._model.controller.text);
    int v2 = int.parse(this._model.controller2.text);

    this._model.result = v1 + v2;

    this._view.refreshData(this._model);
  }
}