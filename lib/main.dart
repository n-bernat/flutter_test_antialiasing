import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const _HomePage(),
    );
  }
}

class _HomePage extends StatelessWidget {
  const _HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Antialiasing Test'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => showDialog<void>(
            context: context,
            builder: (context) => const _CustomDialog(),
          ),
          child: const Text("Show Dialog"),
        ),
      ),
    );
  }
}

class _CustomDialog extends StatelessWidget {
  const _CustomDialog();

  @override
  Widget build(BuildContext context) {
    return const AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(32),
        ),
      ),
      content: Icon(
        Icons.language,
        size: 180,
      ),
    );
  }
}
