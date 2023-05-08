import 'package:arti_service/arti_book/chat_api.dart';
import 'package:flutter/material.dart';
import 'chat_page.dart';

class ChatListPage extends StatelessWidget {
  const ChatListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat List'),
      ),
      body: ListView.builder(
        itemCount: _chatList.length,
        itemBuilder: (context, index) {
          final chat = _chatList[index];
          return ListTile(
            title: Text(chat.title),
            subtitle: Text(chat.keywords.join(', ')),
            onTap: () {},
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ChatPage(chatApi: ChatApi()),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class Chat {
  final String title;
  final List<String> keywords;

  const Chat({
    required this.title,
    required this.keywords,
  });
}

final List<Chat> _chatList = [
  const Chat(title: 'Chat 1', keywords: ['Keyword 1', 'Keyword 2']),
  const Chat(title: 'Chat 2', keywords: ['Keyword 3', 'Keyword 4']),
  const Chat(title: 'Chat 3', keywords: ['Keyword 5', 'Keyword 6']),
];
