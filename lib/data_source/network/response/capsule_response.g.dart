// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'capsule_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CapsuleResponse _$CapsuleResponseFromJson(Map<String, dynamic> json) {
  return CapsuleResponse(
    id: json['id'] as String,
    landLandings: json['land_landings'] as int,
    reuseCount: json['reuse_count'] as int,
    serial: json['serial'] as String,
    lastUpdate: json['last_update'] as String,
    status: json['status'] as String,
  );
}

Map<String, dynamic> _$CapsuleResponseToJson(CapsuleResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'reuse_count': instance.reuseCount,
      'land_landings': instance.landLandings,
      'serial': instance.serial,
      'last_update': instance.lastUpdate,
      'status': instance.status,
    };
