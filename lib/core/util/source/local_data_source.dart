import 'package:get_storage/get_storage.dart';
import 'package:injectable/injectable.dart';

abstract class LocalDataSource {
  bool get isDark;
  Future setIsDark(bool flag);
  Future<void> clear();
}

@Environment(Environment.prod)
@Environment(Environment.dev)
@LazySingleton(as: LocalDataSource)
class LocalDataSourceImpl implements LocalDataSource {
  final GetStorage _getStorage;
  LocalDataSourceImpl(this._getStorage);

  @override
  Future<void> clear() {
    return _getStorage.erase();
  }

  @override
  bool get isDark => _getStorage.read<bool>("isDark") == true;

  @override
  Future setIsDark(bool flag) {
    return _getStorage.write("isDark", flag);
  }
}
