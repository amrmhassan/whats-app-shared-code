import 'package:json_annotation/json_annotation.dart';

part 'user_data_sending_id.g.dart';

@JsonSerializable(explicitToJson: true)
class UserDataSendingId {
  final String id;
  final SendingIdType type;

  UserDataSendingId({
    required this.id,
    required this.type,
  });

  factory UserDataSendingId.fromJson(Map<String, dynamic> json) =>
      _$UserDataSendingIdFromJson(json);
  Map<String, dynamic> toJson() => _$UserDataSendingIdToJson(this);
}

enum SendingIdType {
  @JsonValue('userId')
  userId,
  @JsonValue('sessionId')
  sessionId,
  @JsonValue('none')
  none,
}
