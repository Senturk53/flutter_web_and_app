// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter_web_and_app/core/base/base_view_model.dart';
import 'package:flutter_web_and_app/core/util/source/local_data_source.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AppViewModel extends BaseViewModel {
  final LocalDataSource _localDataSource;
  AppViewModel(this._localDataSource);

  final GlobalKey<NavigatorState> _mainNavigatorKey =
      GlobalKey<NavigatorState>();
  GlobalKey<NavigatorState> get mainNavigatorKey => _mainNavigatorKey;

  bool get isDark => _localDataSource.isDark;
  void switchTheme() {
    _localDataSource.setIsDark(!isDark);
    notifyListeners();
  }
}
