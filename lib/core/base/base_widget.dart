// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter_web_and_app/core/base/base_view_model.dart';
import 'package:flutter_web_and_app/core/di/locator.dart';

// Project imports:

abstract class BaseState<T extends BaseViewModel, P extends StatefulWidget>
    extends State<P> {
  T viewModel = getIt<T>();

  @override
  void initState() {
    viewModel.addListener(() {
      if (mounted) {
        setState(() {});
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    viewModel.dispose();
    super.dispose();
  }
}
