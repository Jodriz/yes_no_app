import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/text_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage("https://th.bing.com/th/id/R.d20c81dc811d5febd26cb965209dbb94?rik=TfsZajV3vn%2buSQ&pid=ImgRaw&r=0"),
          ),
        ),
        title: const Text("Pepito"),
        centerTitle: false,
      ),
      body: const _ChatView()
    );
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView();
  @override
  Widget build(BuildContext context) {
    var chatProvider = context.watch<ChatProvider>();
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:10),
        child: Column(
          children: [
            Expanded(child: ListView.builder(
              controller: chatProvider.chatScrollController,
              itemCount: chatProvider.messageList.length,
              itemBuilder: (context, index) {
                final message = chatProvider.messageList[index];
              return message.fromWho == FromWho.hers
              ?HerMessageBubble(message: message)
              : MessageBubble(message: message.text);
            },)),
            TextFieldBox(onValue: chatProvider.sendMessage)
          ]
        ),
      ),
    );
  }
}
