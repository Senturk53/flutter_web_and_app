// Flutter imports:
// Package imports:
import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:network_info_plus/network_info_plus.dart';

@module
abstract class AppModule {
  @Environment(Environment.dev)
  @Environment(Environment.prod)
  @Environment(Environment.test)
  @lazySingleton
  Dio get injectRetrofitAPI {
    Dio dio = Dio(
      BaseOptions(baseUrl: "https://maps.googleapis.com/maps", headers: {
        "Content-Type": "application/json",
        "Accept": "application/json",
      }
          // connectTimeout: 10000,
          // receiveTimeout: 10000,
          // sendTimeout: 10000,
          ),
    );
    // dio.interceptors.add(CertificatePinningInterceptor2(
    //     allowedSHAFingerprints: [
    //       getIt<AppConfig>().certificateFingerprintSHA256
    //     ]));

    dio.interceptors.add(LogInterceptor());

    return dio;
  }

  @Environment(Environment.dev)
  @Environment(Environment.prod)
  @preResolve
  Future<GetStorage> get initializeGetStorage async {
    // init future olarak tanımladığı için önce init edip sonra objeyi çağrıyoruz.
    var storageName = "gs1";
    await GetStorage.init(storageName);
    return GetStorage(storageName);
  }

  NetworkInfo get networkInfo => NetworkInfo();
}
