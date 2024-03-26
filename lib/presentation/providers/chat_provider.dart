import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController chatScrollController = ScrollController();
  List<Message> messageList = [
    Message(text: "Hello", fromWho: FromWho.mine),
    Message(text: "Your fine?", fromWho: FromWho.hers),
    Message(text: "Hello", fromWho: FromWho.mine),
    Message(text: "Your fine?", fromWho: FromWho.hers),
  ];

  Future<void> sendMessage(String text) async {
      if(text.isEmpty) return;
      final newMessage = Message(text: text, fromWho: FromWho.mine);
      messageList.add(newMessage);
      notifyListeners();
      moveScrollToBottom();
  }

  void moveScrollToBottom() async {
    await Future.delayed(const Duration(milliseconds: 100));
    chatScrollController.animateTo(chatScrollController.position.maxScrollExtent, duration: const Duration(milliseconds: 300), curve: Curves.easeOut);
  }

}