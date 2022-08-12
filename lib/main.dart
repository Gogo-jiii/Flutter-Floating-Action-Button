import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Floating Action Button'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const Center(
        child: Text("Hello world!"),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: const Icon(Icons.add),
        onPressed: () {
          if (kDebugMode) {
            print("FAB clicked");
          }
        },
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //   backgroundColor: Colors.green,
      //   icon: const Icon(Icons.add),
      //   onPressed: () {
      //     if (kDebugMode) {
      //       print("FAB clicked");
      //     }
      //   },
      //   label: const Text("Add"),
      // ),
      // floatingActionButton: FloatingActionButton.large(
      //   backgroundColor: Colors.green,
      //   child: const Icon(Icons.add),
      //   onPressed: () {
      //     if (kDebugMode) {
      //       print("FAB clicked");
      //     }
      //   },
      // ),
      // floatingActionButton: FloatingActionButton.small(
      //   backgroundColor: Colors.green,
      //   child: const Icon(Icons.add),
      //   onPressed: () {
      //     if (kDebugMode) {
      //       print("FAB clicked");
      //     }
      //   },
      // ),
    );
  }
}
