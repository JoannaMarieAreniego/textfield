import 'package:flutter/material.dart';

class homeScreen extends StatefulWidget {
  homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  var item = TextEditingController();

  List<String> todoList = [];

  void adding() {
    todoList.add(item.text);
    setState(() {});
  }

  void delete(int index) {
    todoList.removeAt(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    flex: 2,
                    child: TextField(
                      controller: item,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'To do Items',
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        adding();
                      },
                      icon: const Icon(Icons.add),
                      label: const Text('ADD'),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: todoList.length,
                  itemBuilder: (_, index) => todoItem(todoList[index], index),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class todoItem extends StatelessWidget {
  todoItem(this.item, this.count, {super.key});

  String item;
  int count;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: ListTile(
        title: Text(item),
        leading: CircleAvatar(child: Text(count.toString())),
        trailing: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.delete_forever,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
