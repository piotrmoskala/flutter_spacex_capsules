
import 'package:json_annotation/json_annotation.dart';

part 'capsule_response.g.dart';

@JsonSerializable()
class CapsuleResponse {
  @JsonKey(name: "id")
  final String id; 

  CapsuleResponse({this.id});

  factory CapsuleResponse.fromJson(Map<String, dynamic> json) =>
      _$CapsuleResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CapsuleResponseToJson(this);
}