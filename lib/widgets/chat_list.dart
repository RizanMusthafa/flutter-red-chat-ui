import 'package:flutter/material.dart';
import 'package:red_chat/mock_data/data.dart';
import 'package:red_chat/widgets/chat_list_item.dart';

class ChatList extends StatefulWidget {
  const ChatList({super.key});

  @override
  State<ChatList> createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
        ),
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          itemCount: chats.length,
          itemBuilder: (BuildContext context, int index) {
            final chat = chats[index];
            return ChatListItem(
              chat: chat,
            );
          },
        ),
      ),
    );
  }
}
