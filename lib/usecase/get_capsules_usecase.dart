import 'package:spacex_capsules/model/capsule.dart';
import 'package:spacex_capsules/repository/capsules_repository.dart';

abstract class GetCapsulesUseCase {
  Future<List<Capsule>> getCapsules();
}

class GetCapsulesUseCaseImpl extends GetCapsulesUseCase {
  final CapsulesRepository _capsulesRepository;

  GetCapsulesUseCaseImpl(this._capsulesRepository);

  @override
  Future<List<Capsule>> getCapsules() async {
    return await _capsulesRepository
        .getCapsules()
        .then((value) => value.map((e) => e.toCapsule()).toList());
  }
}
