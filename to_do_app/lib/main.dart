import 'package:flutter/material.dart';
import 'package:project_1/create_task.dart';
import 'package:project_1/first_page.dart';
import 'package:project_1/provider/crud_provider.dart';
import 'package:project_1/task_detail.dart';
import 'package:project_1/todo.dart';
import 'package:provider/provider.dart';
import 'signin_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CrudManager(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SignInPage(), // Show the sign-in page as the initial page
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeContent(),
    );
  }
}

class HomeContent extends StatefulWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  int currentPage = 0;
  List<Widget> pages = const [
    FirstPage(),
    ToDo(),
    CreateTask(),
    TaskDetail(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[400],
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: "Home,",
          ),
          NavigationDestination(
              icon: Icon(Icons.question_answer), label: "ToDo List"),
          NavigationDestination(icon: Icon(Icons.home), label: "Create"),
          NavigationDestination(icon: Icon(Icons.home), label: "Show"),
        ],
        backgroundColor: Colors.red[400],
        onDestinationSelected: (int index) {
          setState(() {
            currentPage = index;
          });
        },
        selectedIndex: currentPage,
      ),
      body: pages[currentPage],
    );
  }
}
