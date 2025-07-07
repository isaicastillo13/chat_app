import 'package:chat_app/domain/entities/message.dart';
import 'package:flutter/material.dart';

class ChatProvider extends ChangeNotifier {
  //Variables
  List<Message> message = [
    Message(text: 'CR7', fromWho: FromWho.me),
    Message(text: 'Eres el mejor del mundo ?', fromWho: FromWho.me),
  ];

  Future <void> SendMessage( String text) async {
    // TODO: Implement the logic to send a message
  }
}
