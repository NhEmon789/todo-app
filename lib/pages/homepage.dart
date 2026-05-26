import 'package:flutter/material.dart';
import '../main.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {

    bool isDark =
        Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: const Text("To Do App"),
        centerTitle: true,
        toolbarHeight: 80,
        backgroundColor: Colors.blue,

        actions: [
          IconButton(
            icon: Icon(
              isDark
                  ? Icons.dark_mode
                  : Icons.light_mode,
            ),
            onPressed: () {
              MyApp.of(context)?.toggleTheme();
            },
          ),
        ],
      ),

      body: const Center(
        child: Text(
          "Welcome to Todo App",
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}