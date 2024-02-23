// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data_sending_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDataSendingId _$UserDataSendingIdFromJson(Map<String, dynamic> json) =>
    UserDataSendingId(
      id: json['id'] as String,
      type: $enumDecode(_$SendingIdTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$UserDataSendingIdToJson(UserDataSendingId instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$SendingIdTypeEnumMap[instance.type]!,
    };

const _$SendingIdTypeEnumMap = {
  SendingIdType.userId: 'userId',
  SendingIdType.sessionId: 'sessionId',
  SendingIdType.none: 'none',
};
