import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/presentation/providers/chat_privider.dart';
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
    final chatProvider = context.watch<ChatProvider>();
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  controller: chatProvider.chatScrollController,
                  itemCount: chatProvider.messageList.length,
                  itemBuilder: (context, index) {
                    final message = chatProvider.messageList[index];
                    return (message.fromWho == FromWho.hers)
                        ? HerMessageBubble(message: message,)
                        : MyMessageBubble(message: message.text);
                  }),
            ),

            //Caja de Texto
            MessageFieldBox(
              // onValue: (value) {
              //   chatProvider.sendMessage(value);
              //},
              onValue: chatProvider.sendMessage,
            )
          ],
        ),
      ),
    );
  }
}
