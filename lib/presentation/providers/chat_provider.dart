import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messageList = [
    Message(text: "Hello", fromWho: FromWho.mine),
    Message(text: "Your fine?", fromWho: FromWho.hers),
    Message(text: "Hello", fromWho: FromWho.mine),
    Message(text: "Your fine?", fromWho: FromWho.hers),
  ];

  Future<void> sendMessage(String text) async {
      final newMessage = Message(text: text, fromWho: FromWho.mine);
      messageList.add(newMessage);
      notifyListeners();
  }

}