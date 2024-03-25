import 'package:flutter/material.dart';

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
      body: ChatView()
    );
  }
}

class ChatView extends StatelessWidget {
  const ChatView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:10),
        child: Column(
          children: [
            Expanded(child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
              return Text("Index: ${index}");
            },)),
            Text("Hola"),
            Text("Mundo"),
          ]
        ),
      ),
    );
  }
}