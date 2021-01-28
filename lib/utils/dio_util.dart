import 'package:dio/dio.dart';
import 'package:dio_http_cache/dio_http_cache.dart';
export 'package:dio/dio.dart';
export 'package:dio_http_cache/dio_http_cache.dart';

/// 全局的网络管理者
Dio dio = Dio();

class DioUtils {
  /// 初始化网络设置
  DioUtils.setup() {
    // 设置网络基本参数
    dio.options.connectTimeout = 20000;
    dio.options.receiveTimeout = 20000;
    dio.options.contentType = Headers.formUrlEncodedContentType;

    // 添加HTTP网络缓存器
    dio.interceptors.add(
        DioCacheManager(
        CacheConfig(
          defaultMaxStale: Duration(days: 15),)
        ).interceptor);

    // 添加HTTP网络Log
    dio.interceptors.add(LogInterceptor(
        request: true,
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true));

  }
}