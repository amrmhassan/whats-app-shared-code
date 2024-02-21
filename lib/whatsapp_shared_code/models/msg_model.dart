import 'package:json_annotation/json_annotation.dart';
import 'package:shared_code/shared_code/converters/date_time_converter.dart';

part 'msg_model.g.dart';

@JsonSerializable(explicitToJson: true)
@DateTimeConverter()
class MsgModel {
  final String id;
  final String senderId;
  final String receiverId;
  final String content;
  final DateTime sentAtFromSender;
  final DateTime? sentAtFromServer;
  final Map<String, dynamic> extra;

  MsgModel({
    required this.id,
    required this.senderId,
    required this.receiverId,
    required this.content,
    required this.sentAtFromSender,
    this.sentAtFromServer,
    required this.extra,
  });

  factory MsgModel.fromJson(Map<String, dynamic> json) =>
      _$MsgModelFromJson(json);
  Map<String, dynamic> toJson() => _$MsgModelToJson(this);
}
