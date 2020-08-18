import 'package:json_annotation/json_annotation.dart';
import 'package:spacex_capsules/model/capsule.dart';

part 'capsule_response.g.dart';

@JsonSerializable()
class CapsuleResponse {
  @JsonKey(name: "id")
  final String id;
  @JsonKey(name: "reuse_count")
  final int reuseCount;
  @JsonKey(name: "land_landings")
  final int landLandings;
  @JsonKey(name: "serial")
  final String serial;
  @JsonKey(name: "last_update")
  final String lastUpdate;
  @JsonKey(name: "status")
  final String status;

  CapsuleResponse(
      {this.id,
      this.landLandings,
      this.reuseCount,
      this.serial,
      this.lastUpdate,
      this.status});

  factory CapsuleResponse.fromJson(Map<String, dynamic> json) =>
      _$CapsuleResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CapsuleResponseToJson(this);

  Capsule toCapsule() {
    return Capsule(
        id: id,
        landLandings: landLandings,
        reuseCount: reuseCount,
        serial: serial,
        lastUpdate: lastUpdate,
        status: status);
  }
}
