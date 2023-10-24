import 'package:flutter_web_and_app/core/base/base_view_model.dart';
import 'package:flutter_web_and_app/core/util/source/local_data_source.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeViewModel extends BaseViewModel {
  LocalDataSource localDataSource;
  HomeViewModel(this.localDataSource);
}
