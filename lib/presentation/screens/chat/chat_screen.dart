import 'package:chat_app/presentation/widgets/chat/his_message.dart';
import 'package:chat_app/presentation/widgets/chat/my_message.dart';
import 'package:chat_app/presentation/widgets/shared/message_field_box.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Variables
    String urlImage =
        'https://assets.goal.com/images/v3/blt2aaca933046f8b00/Cristiano%20Ronaldo%20Portugal%202024%20(4).jpg?auto=webp&format=pjpg&width=3840&quality=60';
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(5.0),
          child: CircleAvatar(backgroundImage: NetworkImage(urlImage)),
        ),
        title: const Text('Cristiano Ronaldo 🇵🇹'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return (index % 2 == 0)
                      ? const HisMessage()
                      : const MyMessage();
                },
              ),
            ),

            // caja de texto
            const MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}
