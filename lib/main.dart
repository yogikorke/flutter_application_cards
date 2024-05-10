import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<int> pickedCards = [];
  List<int> cards = [
    0,
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20,
    21,
    22,
    23,
    24,
    25,
    26,
    27,
    28,
    29,
    30,
    31,
    32,
    33,
    34,
    35,
    36,
    37,
    38,
    39,
    40,
    41,
    42,
    43,
    44,
    45,
    46,
    47,
    48,
    49,
    50,
    51
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: cards.isEmpty
                  ? null
                  : () {
                      setState(() {
                        if (pickedCards.isNotEmpty) {
                          cards.removeWhere(
                              (element) => pickedCards.contains(element));
                        }
                        pickedCards.clear();
                        pickedCards = cards.sample(4);
                      });
                    },
              child: const Text("Deal Cards"),
            ),
            cards.isEmpty
                ? const Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: Text("All of the cards have been played"),
                  )
                : Padding(
                    padding: const EdgeInsets.fromLTRB(8, 32, 8, 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        cardLayout(pickedCards.isNotEmpty
                            ? "${pickedCards.elementAt(0)}"
                            : ""),
                        cardLayout(pickedCards.isNotEmpty
                            ? "${pickedCards.elementAt(1)}"
                            : ""),
                        cardLayout(pickedCards.isNotEmpty
                            ? "${pickedCards.elementAt(2)}"
                            : ""),
                        cardLayout(pickedCards.isNotEmpty
                            ? "${pickedCards.elementAt(3)}"
                            : ""),
                      ],
                    ),
                  )
          ],
        ),
      ),
    );
  }

  Widget cardLayout(String cardTitle) {
    return Container(
      width: 75,
      height: 100,
      decoration: BoxDecoration(
        border: Border.all(
          color: cardTitle.isEmpty ? Colors.grey : Colors.blue,
        ),
      ),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Positioned(top: 0, left: 0, child: Text(cardTitle)),
              Positioned(bottom: 0, right: 0, child: Text(cardTitle)),
            ],
          ),
        ),
      ),
    );
  }
}
