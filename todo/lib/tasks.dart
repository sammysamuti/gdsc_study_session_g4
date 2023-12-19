import 'package:flutter/material.dart';

class ToDo extends StatelessWidget {
  ToDo({super.key});
  @override
  TextEditingController controllers = TextEditingController();
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(" ToDo List "),
          leading: IconButton(
              onPressed: () {
                //navigate to homepage
                Navigator.pushNamed(context, '/homepage');
              },
              icon: Icon(Icons.chevron_left)),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: ListView(
            children: [
              Image.asset(
                'assets/images/stickman-removebg-preview.jpg',
              ),
              const Text("Tasks List"),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text("UI/UX App Design, 29, 2023"),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text("UI/UX App Design, 29, 2023"),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text("UI/UX App Design, 29, 2023"),
              ),
              const SizedBox(
                height: 20,
              ),
              OutlinedButton(
                onPressed: () {
                  //navigate to create task page
                  Navigator.pushNamed(context, '/createtask');
                },
                child: Text("Create Task"),
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color.fromARGB(255, 244, 105, 54),
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
