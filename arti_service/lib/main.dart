import 'package:arti_service/arti_auth/firebase_options.dart';
import 'package:arti_service/arti_auth/login_page.dart';
import 'package:arti_service/arti_auth/signup_page.dart';
import 'package:arti_service/arti_book/chat_api.dart';
import 'package:arti_service/arti_book/chat_page.dart';
import 'package:arti_service/arti_book/chatlist_page.dart';
import 'package:arti_service/main_page.dart';
import 'package:arti_service/start_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ArtI',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const StartView(),
        '/login': (context) => const LoginView(),
        '/signup': (context) => const SignUpView(),
        '/main': (context) => const MainView(),
        '/chatview': (context) => ChatPage(chatApi: ChatApi()),
        '/booklist': (context) => const ChatListPage(),
        // '/stylerlist': (context) => const StlyerListView(),
        // '/stylerlist': (context) => const BookListView(),
      },
    );
  }
}
