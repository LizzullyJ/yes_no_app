import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/widgets.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6v1bpshfs9UIeDeV04w03zgb34vH0Ya7M0-SUlCOo6teuq99nih-4YdORvs--ipQHPg4&usqp=CAU'),
          ),
        ),
        title: const Text('Patroclio ☻'),
      ),
      body: const _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                return (index % 2 == 0)
                ? const HerMessageBubble()
                : const MyMessageBubble();
              }),
            ),

            //Caja de Texto
            const MessageFieldBox()
          ],
        ),
      ),
    );
  }
}

