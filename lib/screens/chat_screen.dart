import 'package:flutter/material.dart';
import 'package:red_chat/mock_data/data.dart';
import 'package:red_chat/models/user.dart';
import 'package:red_chat/widgets/sender_chat_item.dart';

class ChatScreen extends StatefulWidget {
  final User user;
  const ChatScreen({required this.user, super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(widget.user.name),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz))
        ],
      ),
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Container(
        margin: const EdgeInsets.only(top: 20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                child: Container(
                  padding: const EdgeInsets.only(top: 30),
                  child: ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      final msg = messages[index];
                      return SenderChatItem(chat: msg);
                    },
                    itemCount: messages.length,
                    reverse: true,
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: const BorderRadius.all(Radius.circular(30))),
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.emoji_emotions_outlined,
                      color: Colors.blueGrey,
                    ),
                    iconSize: 26,
                  ),
                  const Expanded(
                    child: TextField(
                      textCapitalization: TextCapitalization.sentences,
                      decoration: InputDecoration.collapsed(
                        hintText: "Type your message...",
                        hintStyle:
                            TextStyle(fontSize: 16, color: Colors.blueGrey),
                      ),
                      style: TextStyle(fontSize: 16, color: Colors.blueGrey),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.attach_file,
                      color: Colors.blueGrey,
                    ),
                    iconSize: 26,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
