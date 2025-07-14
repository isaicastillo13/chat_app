import 'package:chat_app/config/theme/helper/yes_no_answer.dart';
import 'package:chat_app/domain/entities/message.dart';
import 'package:flutter/material.dart';

class ChatProvider extends ChangeNotifier {

  final YesNoAnswer yesNoAnswer = YesNoAnswer();
  //Variables

  final ScrollController scrollController = ScrollController();
  List<Message> messageList = [
    Message(text: 'CR7', fromWho: FromWho.me),
    Message(text: 'Eres el mejor del mundo ?', fromWho: FromWho.me),
  ];

  Future <void> SendMessage( String text) async {
    if (text.isEmpty) return; // No enviar mensajes vacíos
    // TODO: Implement the logic to send a message
    final newMessage = Message(text: text, fromWho: FromWho.me);
    messageList.add(newMessage);
    if(text.endsWith("?")) {
      herReplay();
    }
    notifyListeners();
    scrollBottom();
  }

  Future<void> herReplay() async{
    final herMessage = await yesNoAnswer.getAnswer();
  }



  Future <void>  scrollBottom() async{
    await Future.delayed(const Duration(milliseconds: 100));
    
    scrollController.animateTo(
      scrollController.position.maxScrollExtent, 
      duration: const Duration(milliseconds: 300), 
      curve: Curves.easeInOut
      );
  }
}
