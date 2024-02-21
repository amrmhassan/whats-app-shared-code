// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

class SocketModel {
  final String sessionId;
  String? userId;
  final WebSocket webSocket;
  DateTime onlineSince;

  SocketModel({
    required this.webSocket,
    this.userId,
    required this.onlineSince,
    required this.sessionId,
  });

  SocketModel copyWith({
    String? userId,
    WebSocket? webSocket,
    DateTime? onlineSince,
  }) {
    return SocketModel(
      userId: userId ?? this.userId,
      webSocket: webSocket ?? this.webSocket,
      onlineSince: onlineSince ?? this.onlineSince,
      sessionId: sessionId,
    );
  }

  @override
  String toString() {
    return 'session Id $sessionId ==> user id $userId';
  }
}
