// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_item_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BusinessImpl _$$BusinessImplFromJson(Map<String, dynamic> json) =>
    _$BusinessImpl(
      json['projectId'] as String,
      json['customer'] as String,
      const DateTimeConverter().fromJson(json['start'] as String),
      const DateTimeConverter().fromJson(json['end'] as String),
      (json['earn'] as num).toDouble(),
    );

Map<String, dynamic> _$$BusinessImplToJson(_$BusinessImpl instance) =>
    <String, dynamic>{
      'projectId': instance.projectId,
      'customer': instance.customer,
      'start': const DateTimeConverter().toJson(instance.start),
      'end': const DateTimeConverter().toJson(instance.end),
      'earn': instance.earn,
    };

_$TaskImpl _$$TaskImplFromJson(Map<String, dynamic> json) => _$TaskImpl(
      json['projectId'] as String,
      json['member'] as String,
      const DateTimeConverter().fromJson(json['month'] as String),
      (json['mm'] as num).toDouble(),
    );

Map<String, dynamic> _$$TaskImplToJson(_$TaskImpl instance) =>
    <String, dynamic>{
      'projectId': instance.projectId,
      'member': instance.member,
      'month': const DateTimeConverter().toJson(instance.month),
      'mm': instance.mm,
    };
