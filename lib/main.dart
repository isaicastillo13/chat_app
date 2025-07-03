import 'package:chat_app/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 4).theme(),
      home: Scaffold(
        appBar: AppBar(title: Text('Chat App')),
        body: Center(
          child: FilledButton.tonal(
            onPressed: () {},
            child: Text('Start Chat'),
          ),
        ),
      ),
    );
  }
}
