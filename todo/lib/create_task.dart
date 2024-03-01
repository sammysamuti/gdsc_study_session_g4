import 'package:flutter/material.dart';

class createTask extends StatelessWidget {
  createTask({super.key});
  @override
  TextEditingController controllers = TextEditingController();
  final TextStyle customTextStyle = const TextStyle(
    color: const Color.fromARGB(255, 244, 105, 54),
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
  );
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Create Tasks'),
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {
                //navigate to homepage
                Navigator.pushNamed(context, '/tasks');
              },
              icon: Icon(Icons.chevron_left)),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: ListView(
            children: [
              const Text(
                "Main Task Name",
                style: TextStyle(
                  color: const Color.fromARGB(255, 244, 105, 54),
                  fontSize: 20.0,
                ),
              ),
              Container(
                padding: EdgeInsets.all(12),
                child: TextField(
                  controller: controllers,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "UI/UX App Design, 29, 2023",
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Due Date",
                style: TextStyle(
                  color: const Color.fromARGB(255, 244, 105, 54),
                  fontSize: 20.0,
                ),
              ),
              Container(
                padding: EdgeInsets.all(12),
                child: TextField(
                  //Icon(Icons.calendar_month)
                  controller: controllers,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "April 29,2023",
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Description",
                style: TextStyle(
                  color: const Color.fromARGB(255, 244, 105, 54),
                  fontSize: 20.0,
                ),
              ),
              Container(
                padding: EdgeInsets.all(12),
                child: TextField(
                  controller: controllers,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Insert Description",
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              OutlinedButton(
                onPressed: () {
                  //navigate to create task page
                  Navigator.pushNamed(context, '/addtask');
                },
                child: Text("Add Task"),
                style: OutlinedButton.styleFrom(
                  minimumSize: Size(5, 40),
                  foregroundColor: Colors.white,
                  backgroundColor: const Color.fromARGB(255, 244, 105, 54),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
