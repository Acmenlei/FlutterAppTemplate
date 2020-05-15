import 'package:dio/dio.dart';
class HttpRequest {
  static Future request(String url,{String method = 'get', Map<String, dynamic> parmas}) async { // 异步请求数据
      BaseOptions baseOptions =
      BaseOptions(baseUrl: 'https://douban.uieee.com', connectTimeout: 10000);
  // 1. 创建请求实例
      final dio = Dio(baseOptions);
    // 2. 配置请求方式与请求头等操作(根据需求进行配置)
      Options options = Options(method: method);
    // 3. 发送网路请求
      final result =
        await dio.request(url, queryParameters: parmas, options: options);
    // 4. request方法返回一个future(类似前端的Promise，可以使用then获取结果)
    return result;
  }
}
