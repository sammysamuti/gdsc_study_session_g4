import 'package:todo/addtask.dart';
import 'package:todo/create_task.dart';
import 'package:flutter/material.dart';
import 'package:todo/tasks.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
      routes: {
        '/tasks': (context) => ToDo(),
        '/homepage': (context) => MyApp(),
        '/createtask': (context) => createTask(),
        '/addtask': (context) => addtask(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(230, 239, 133, 80),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/stickman-removebg-preview.png',
            ),
            const SizedBox(
              height: 100,
            ),
            OutlinedButton(
              onPressed: () {
                //navigate to todo list page
                Navigator.pushNamed(context, '/tasks');
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
              ),
              child: const Text('Get Started'),
            )
          ],
        ),
      ),
    );
  }
}
