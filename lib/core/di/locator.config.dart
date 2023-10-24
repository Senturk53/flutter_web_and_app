// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:flutter_web_and_app/app/app_vm.dart' as _i7;
import 'package:flutter_web_and_app/core/di/module.dart' as _i9;
import 'package:flutter_web_and_app/core/util/source/local_data_source.dart'
    as _i5;
import 'package:flutter_web_and_app/pages/home/home_vm.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:get_storage/get_storage.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;
import 'package:network_info_plus/network_info_plus.dart' as _i6;

const String _dev = 'dev';
const String _prod = 'prod';
const String _test = 'test';

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    gh.lazySingleton<_i3.Dio>(
      () => appModule.injectRetrofitAPI,
      registerFor: {
        _dev,
        _prod,
        _test,
      },
    );
    await gh.factoryAsync<_i4.GetStorage>(
      () => appModule.initializeGetStorage,
      registerFor: {
        _dev,
        _prod,
      },
      preResolve: true,
    );
    gh.lazySingleton<_i5.LocalDataSource>(
      () => _i5.LocalDataSourceImpl(gh<_i4.GetStorage>()),
      registerFor: {
        _prod,
        _dev,
      },
    );
    gh.factory<_i6.NetworkInfo>(() => appModule.networkInfo);
    gh.lazySingleton<_i7.AppViewModel>(
        () => _i7.AppViewModel(gh<_i5.LocalDataSource>()));
    gh.factory<_i8.HomeViewModel>(
        () => _i8.HomeViewModel(gh<_i5.LocalDataSource>()));
    return this;
  }
}

class _$AppModule extends _i9.AppModule {}
