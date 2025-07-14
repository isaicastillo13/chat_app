import 'package:chat_app/domain/entities/message.dart';
import 'package:dio/dio.dart';

class YesNoAnswer {
  final _dio = Dio();



  Future<Message> getAnswer() async{

    final response = await _dio.get('https://yesno.wtf/api');
    print(response.data);

   return Message(
      text: response.data['answer'],
      fromWho: FromWho.her,
      urlImg: response.data['image'],
    );
  }
}