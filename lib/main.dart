import 'package:flutter/material.dart';

import 'recipe.dart';

void main() {
  runApp(RecipeApp());
}

class RecipeApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // 2
    final ThemeData theme = ThemeData(
      colorScheme: ThemeData().colorScheme.copyWith(
            primary: Colors.grey,
            secondary: Colors.black,
          ),
      useMaterial3: false,
    );
    // 3
    return MaterialApp(
      title: 'Recipe Calculator',
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: MyHomePage(title: 'Recipe Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // 1
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      // 3
      body: SafeArea(
        child: Container(),
      ),
    );
  }
}
