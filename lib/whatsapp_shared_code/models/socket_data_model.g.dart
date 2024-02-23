// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'socket_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SocketDataModel _$SocketDataModelFromJson(Map<String, dynamic> json) =>
    SocketDataModel(
      path: json['path'] as String,
      method: $enumDecode(_$SocketMethodEnumMap, json['method']),
      sentAtServer: _$JsonConverterFromJson<String, DateTime>(
          json['sentAtServer'], const DateTimeConverter().fromJson),
      receivedAt: _$JsonConverterFromJson<String, DateTime>(
          json['receivedAt'], const DateTimeConverter().fromJson),
      headers: json['headers'] as Map<String, dynamic>?,
      body: json['body'],
      userDataSendingId: UserDataSendingId.fromJson(
          json['userDataSendingId'] as Map<String, dynamic>),
    )..sentAtLocal =
        const DateTimeConverter().fromJson(json['sentAtLocal'] as String);

Map<String, dynamic> _$SocketDataModelToJson(SocketDataModel instance) =>
    <String, dynamic>{
      'path': instance.path,
      'method': _$SocketMethodEnumMap[instance.method]!,
      'sentAtLocal': const DateTimeConverter().toJson(instance.sentAtLocal),
      'sentAtServer': _$JsonConverterToJson<String, DateTime>(
          instance.sentAtServer, const DateTimeConverter().toJson),
      'receivedAt': _$JsonConverterToJson<String, DateTime>(
          instance.receivedAt, const DateTimeConverter().toJson),
      'headers': instance.headers,
      'body': instance.body,
      'userDataSendingId': instance.userDataSendingId.toJson(),
    };

const _$SocketMethodEnumMap = {
  SocketMethod.get: 'get',
  SocketMethod.post: 'post',
  SocketMethod.delete: 'delete',
  SocketMethod.patch: 'patch',
  SocketMethod.put: 'put',
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
