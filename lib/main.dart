import 'package:flutter/material.dart';
import 'package:search_web/fruitList.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This is the root widget
  // of your application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Search(),
    );
  }
}

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  static List<FruitModel> FruitList = [];

  void updateList(String value) {
    //dd
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 17, 0, 95),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 17, 0, 95),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Search for",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromARGB(255, 36, 12, 172),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
                hintText: "eg: the dark",
                prefixIcon: const Icon(Icons.search),
                prefixIconColor: Colors.blue,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView(),
            ),
          ],
        ),
      ),
    );
  }
}
