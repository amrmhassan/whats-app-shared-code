import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:shared_code/shared_code/converters/date_time_converter.dart';
import 'package:whatsapp_shared_code/whatsapp_shared_code/runtime_variables.dart';

part 'socket_data_model.g.dart';

@JsonSerializable(explicitToJson: true)
@DateTimeConverter()
class SocketDataModel {
  /// the type of the message, like path
  final String path;

  /// this is the method of the socket request
  final SocketMethod method;

  /// the time this message left the sender device
  late DateTime sentAtLocal;

  /// the time this message left the server
  final DateTime? sentAtServer;

  /// the time this message reached the target
  final DateTime? receivedAt;

  final Map<String, dynamic>? headers;
  final dynamic body;

  SocketDataModel({
    required this.path,
    required this.method,
    this.sentAtServer,
    this.receivedAt,
    this.headers,
    required this.body,
  }) {
    sentAtLocal = DateTime.now();
  }

  static SocketDataModel? fromJson(Map<String, dynamic> json) {
    try {
      return _$SocketDataModelFromJson(json);
    } catch (e) {
      logger.e(e);
      return null;
    }
  }

  Map<String, dynamic> toJson() => _$SocketDataModelToJson(this);

  @override
  String toString() {
    return json.encode(toJson());
  }

  static SocketDataModel? fromString(String model) {
    try {
      return SocketDataModel.fromJson(json.decode(model));
    } catch (e) {
      logger.e(e);
      return null;
    }
  }

  String get hash {
    String result = _createHash(toString());
    return result;
  }

  bool exact(String otherHash) {
    return otherHash == hash;
  }
}

enum SocketMethod {
  @JsonValue('get')
  get,
  @JsonValue('post')
  post,
  @JsonValue('delete')
  delete,
  @JsonValue('patch')
  patch,
  @JsonValue('put')
  put,
}

String _createHash(String input) {
  var bytes = utf8.encode(input); // Convert the string to bytes
  var hash = sha256.convert(bytes); // Generate the hash

  return hash.toString(); // Return the hash as a string
}
