
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:spacex_capsules/data_source/network/response/capsule_response.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: "https://api.spacexdata.com/v4/")
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET("/capsules")
  Future<List<CapsuleResponse>> getCapsules();
}