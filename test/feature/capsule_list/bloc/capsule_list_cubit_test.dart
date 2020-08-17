import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:spacex_capsules/feature/capsule_list/bloc/capsule_list_cubit.dart';
import 'package:spacex_capsules/model/capsule.dart';
import 'package:spacex_capsules/usecase/get_capsules_usecase.dart';

class MockGetCapsulesUseCase extends Mock implements GetCapsulesUseCase {}

void main() {
  MockGetCapsulesUseCase mockGetCapsulesUseCase;
  List<Capsule> capsules = [Capsule(id: "1"), Capsule(id: "2")];

  setUp(() {
    mockGetCapsulesUseCase = MockGetCapsulesUseCase();
  });

  blocTest<CapsuleListCubit, CapsuleListState>(
    'emits list of capsules',
    build: () {
      // when(mockGetCapsulesUseCase.getCapsules())
      //     .thenAnswer((realInvocation) async => capsules);
      return CapsuleListCubit(mockGetCapsulesUseCase);
    },
    expect: [CapsuleListLoading(), CapsuleList(capsules)],
    verify: (_) {
      verify(mockGetCapsulesUseCase.getCapsules()).called(1);
    },
  );

  blocTest<CapsuleListCubit, CapsuleListState>(
    'emits empty list of capsules',
    build: () {
      when(mockGetCapsulesUseCase.getCapsules()).thenAnswer((_) async => []);
      return CapsuleListCubit(mockGetCapsulesUseCase);
    },
    act: (cubit) => cubit.getCapsules(),
    expect: [CapsuleListLoading(), CapsuleListEmpty()],
    verify: (_) {
      verify(mockGetCapsulesUseCase.getCapsules()).called(1);
    },
  );
}
