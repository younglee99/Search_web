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
  static List<FruitModel> FruitList = [
    FruitModel("apple", "1000won",
        "https://media.istockphoto.com/id/184276818/ko/%EC%82%AC%EC%A7%84/%EB%A0%88%EB%93%9C-%EC%82%AC%EA%B3%BC%EB%82%98%EB%AC%B4.jpg?b=1&s=170667a&w=0&k=20&c=QjO2URFOCEiVWpz198xiI-Es4oRQsykA5wCpGnyzy3Y="),
    FruitModel("strawberry", "5000won",
        "https://media.istockphoto.com/id/1317775279/ko/%EC%82%AC%EC%A7%84/%EB%94%B8%EA%B8%B0%EB%8A%94-%EA%B3%A0%EB%A6%BD%EB%90%98%EC%96%B4-%EC%9E%88%EC%8A%B5%EB%8B%88%EB%8B%A4-%EB%94%B8%EA%B8%B0-%EC%8A%AC%EB%9D%BC%EC%9D%B4%EC%8A%A4%EC%99%80-%EC%A0%84%EC%B2%B4-%EB%B2%A0%EB%A6%AC-%EB%B6%84%EB%A6%AC-%ED%9D%B0%EC%83%89%EC%97%90-%EB%94%B8%EA%B8%B0-%EB%91%90-%EA%B0%9C-%EC%B8%A1%EB%A9%B4-%EB%B3%B4%EA%B8%B0%EC%9E%85%EB%8B%88%EB%8B%A4-%EC%A0%84%EC%B2%B4-%EC%8B%AC%EB%8F%84.jpg?b=1&s=170667a&w=0&k=20&c=ARq5Qsuo5TVThzVRxlkmvQYM5GTXOnn4AMnKeHSnm34="),
    FruitModel("banana", "3000won",
        "https://media.istockphoto.com/id/173242750/ko/%EC%82%AC%EC%A7%84/%EB%B0%94%EB%82%98%EB%82%98-%EB%B2%88%EC%B9%98.jpg?b=1&s=170667a&w=0&k=20&c=cRkeTph5LlutYSkQ9_1jHfRY8O-ZYOgAe-YNfiCCIQM="),
    FruitModel("grapes", "2000won",
        "https://media.istockphoto.com/id/1295773461/ko/%EC%82%AC%EC%A7%84/%EB%B3%B4%EB%9D%BC%EC%83%89-%ED%8F%AC%EB%8F%84-%ED%9D%B0%EC%83%89-%EB%B0%B0%EA%B2%BD%EC%97%90-%EA%B3%A0%EB%A6%BD-%ED%81%B4%EB%A6%AC%ED%95%91-%EA%B2%BD%EB%A1%9C-%ED%95%84%EB%93%9C%EC%9D%98-%EC%A0%84%EC%B2%B4-%EA%B9%8A%EC%9D%B4.jpg?b=1&s=170667a&w=0&k=20&c=gI1J0e9EHeJBXjDa7VmuGAfSoEW9cSwUlMExHj7Rnkg="),
    FruitModel("mango", "8000won",
        "https://media.istockphoto.com/id/168370138/ko/%EC%82%AC%EC%A7%84/mango.jpg?b=1&s=170667a&w=0&k=20&c=H4tjy1KZC2DKik0yRLnT7XW5il9ICRiyvhCtP0uxyVY="),
    FruitModel("watermelon", "20000won",
        "https://media.istockphoto.com/id/1321448019/ko/%EC%82%AC%EC%A7%84/%ED%9D%B0%EC%83%89-%EB%B0%B0%EA%B2%BD%EC%97%90-%EA%B3%A0%EB%A6%BD-%EB%90%9C-%EC%9E%98-%EC%9D%B5%EC%9D%80-%EC%9C%A1%EC%A6%99-%EC%88%98%EB%B0%95.jpg?b=1&s=170667a&w=0&k=20&c=Dv6R3kR-yYiyAGPgXeTmS59G-bLkADeMiiVDBccoZdA="),
    FruitModel("melon", "12000won",
        "https://media.istockphoto.com/id/910127132/ko/%EC%82%AC%EC%A7%84/%EC%B9%B8%ED%83%88%EB%A3%A8%ED%94%84-%EB%A9%9C%EB%A1%A0-%EB%A9%9C%EB%A1%A0.jpg?b=1&s=170667a&w=0&k=20&c=4lOMcnS4LklePPV7_25qo9A0KfTfpyUWMAs0b7P226E="),
    FruitModel("orange", "2500won",
        "https://media.istockphoto.com/id/1357864202/ko/%EC%82%AC%EC%A7%84/%ED%9D%B0%EC%83%89-%EB%B0%B0%EA%B2%BD%EC%97%90-%EA%B3%A0%EB%A6%BD-%EB%90%9C-%EB%A7%8C%EB%8B%A4%EB%A6%B0-%EC%98%A4%EB%A0%8C%EC%A7%80-%EA%B3%BC%EC%9D%BC-%EB%98%90%EB%8A%94-%EA%B7%A4-%EC%8B%A0%EC%84%A0%ED%95%9C-%EB%A7%8C%EB%8B%A4%EB%A6%B0-%ED%81%B4%EB%A1%9C%EC%A6%88%EC%97%85.jpg?b=1&s=170667a&w=0&k=20&c=TEP_yJFARfky82uoahPDfQMg9xaeHIwCS5umCjqTrKw="),
    FruitModel("blueberry", "15000won",
        "https://media.istockphoto.com/id/505641702/ko/%EC%82%AC%EC%A7%84/%EB%B8%94%EB%A3%A8%EB%B2%A0%EB%A6%AC.jpg?b=1&s=170667a&w=0&k=20&c=3anu9t8Ho07jhxYc3mE4Jv3xLbonXSpl5w40CgmYjek="),
    FruitModel("kiwi", "6500won",
        "https://media.istockphoto.com/id/482728017/ko/%EC%82%AC%EC%A7%84/%ED%82%A4%EC%9C%84.jpg?b=1&s=170667a&w=0&k=20&c=0n3HFLnX8MJM_Ni2lUyqW4f9lvftzA0EhMH-jjklQBc="),
    FruitModel("cherry", "7000won",
        "https://media.istockphoto.com/id/1326679614/ko/%EC%82%AC%EC%A7%84/%ED%9D%B0%EC%83%89-%EB%B0%B0%EA%B2%BD%EC%97%90-%EA%B3%A0%EB%A6%BD-%EB%90%9C-%EC%B2%B4%EB%A6%AC.jpg?b=1&s=170667a&w=0&k=20&c=3geRTDdycCEKKQuWGvHKcpIfuX9qdlLF9h_-xy-tWoI="),
    FruitModel("tomato", "2700won",
        "https://media.istockphoto.com/id/172925573/ko/%EC%82%AC%EC%A7%84/%ED%86%A0%EB%A7%88%ED%86%A0.jpg?b=1&s=170667a&w=0&k=20&c=Kby3gGP0sl1-fqUMNDbnlHr2o1SyvF5F43XIpzkTrBc="),
    FruitModel("lime", "1200won",
        "https://media.istockphoto.com/id/106491732/ko/%EC%82%AC%EC%A7%84/%EB%A0%88%EB%AA%AC%EC%83%89.jpg?b=1&s=170667a&w=0&k=20&c=qq3xfj8cGlcF38gwCenIj8fOKA7-fFjGEYFCws7zXiw="),
    FruitModel("peach", "1500won",
        "https://media.istockphoto.com/id/1393599686/ko/%EC%82%AC%EC%A7%84/%EB%B3%B5%EC%88%AD%EC%95%84-%EA%B3%BC%EC%9D%BC-%EB%85%B9%EC%83%89-%EC%9E%8E%EC%9C%BC%EB%A1%9C-%EB%B0%98%EC%9C%BC%EB%A1%9C-%EC%9E%90%EB%A5%B8.jpg?b=1&s=170667a&w=0&k=20&c=joBAiIx3ypjp4BzjyaOg85_qGdDmYzz0RyHSAieZkVI=")
  ];

  List<FruitModel> displayList = List.from(FruitList);

  void updateList(String value) {
    setState(() {
      displayList = FruitList.where((element) =>
              element.fruitname!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 17, 0, 95),
      appBar: AppBar(
        title: const Text(
          "Fruit Market",
          style: TextStyle(
            fontSize: 30,
            color: Color.fromARGB(255, 133, 247, 255),
          ),
        ),
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
              "Search for..",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (value) => updateList(value),
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
              child: ListView.builder(
                padding: const EdgeInsets.only(top: 20),
                itemCount: displayList.length,
                itemBuilder: (context, index) => ListTile(
                  title: Text(
                    displayList[index].fruitname!,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: const Text(" "),
                  trailing: Text(
                    displayList[index].fruitprice!,
                    style: const TextStyle(color: Colors.yellow),
                  ),
                  leading: SizedBox(
                    height: 100,
                    width: 100,
                    child: Image.network(displayList[index].fruitimage!),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
