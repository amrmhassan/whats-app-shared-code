// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'msg_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MsgModel _$MsgModelFromJson(Map<String, dynamic> json) => MsgModel(
      id: json['id'] as String,
      senderId: json['senderId'] as String,
      receiverId: json['receiverId'] as String,
      content: json['content'] as String,
      sentAtFromSender: const DateTimeConverter()
          .fromJson(json['sentAtFromSender'] as String),
      sentAtFromServer: _$JsonConverterFromJson<String, DateTime>(
          json['sentAtFromServer'], const DateTimeConverter().fromJson),
      extra: json['extra'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$MsgModelToJson(MsgModel instance) => <String, dynamic>{
      'id': instance.id,
      'senderId': instance.senderId,
      'receiverId': instance.receiverId,
      'content': instance.content,
      'sentAtFromSender':
          const DateTimeConverter().toJson(instance.sentAtFromSender),
      'sentAtFromServer': _$JsonConverterToJson<String, DateTime>(
          instance.sentAtFromServer, const DateTimeConverter().toJson),
      'extra': instance.extra,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
