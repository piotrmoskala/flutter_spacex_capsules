import 'package:flutter_test/flutter_test.dart';
import 'package:spacex_capsules/data_source/network/response/capsule_response.dart';
import 'package:spacex_capsules/model/capsule.dart';

void main() {
  Capsule expectedCapsule;
  CapsuleResponse capsuleResponse; 
  
  setUp((){
    expectedCapsule = Capsule(id: "1", lastUpdate: "broken", landLandings: 1, status: "dead", serial: "EEE333", reuseCount: 3);
    capsuleResponse = CapsuleResponse(id: "1", lastUpdate: "broken", landLandings: 1, status: "dead", serial: "EEE333", reuseCount: 3);
  });

  test('test of mapping CapsuleResponse to Capsule', (){
    expect(expectedCapsule.id, capsuleResponse.toCapsule().id);
    expect(expectedCapsule.lastUpdate, capsuleResponse.toCapsule().lastUpdate);
    expect(expectedCapsule.landLandings, capsuleResponse.toCapsule().landLandings);
    expect(expectedCapsule.status, capsuleResponse.toCapsule().status);
    expect(expectedCapsule.serial, capsuleResponse.toCapsule().serial);
    expect(expectedCapsule.reuseCount, capsuleResponse.toCapsule().reuseCount);
  });
}