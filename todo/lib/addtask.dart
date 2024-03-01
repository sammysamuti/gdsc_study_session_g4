import 'package:flutter/material.dart';

class addtask extends StatelessWidget {
  addtask({super.key});
  @override
  TextEditingController controllers = TextEditingController();
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Task Details"),
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
              Image.asset(
                'assets/images/shoppingList.jpg',
                height: 400,
              ),
              const Text("Title"),
              Container(
                padding: EdgeInsets.all(12),
                child: TextField(
                  controller: controllers,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Insert Title",
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text("Description"),
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
              const SizedBox(height: 20),
              const Text("Deadline"),
              Container(
                padding: EdgeInsets.all(12),
                child: TextField(
                  controller: controllers,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Insert Deadline",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
