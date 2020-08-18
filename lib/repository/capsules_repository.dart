import 'package:spacex_capsules/data_source/network/api_service.dart';
import 'package:spacex_capsules/data_source/network/response/capsule_response.dart';

abstract class CapsulesRepository {
  Future<List<CapsuleResponse>> getCapsules();
}

class CapsulesRepositoryImpl extends CapsulesRepository {
  final ApiService _apiService;

  CapsulesRepositoryImpl(this._apiService);

  @override
  Future<List<CapsuleResponse>> getCapsules() {
    return _apiService.getCapsules();
  }
}
