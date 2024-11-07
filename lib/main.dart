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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  // manage the sum section
  int sum = 0;
  int difference = 0;
  int product = 0;
  double quotient = 0;

  // either use a TextEditingController for each input field to get the value
  TextEditingController add1Controller = TextEditingController();

  // or store each value in the state
  int firstAddNum = 0;
  int secondAddNum = 0;
  int firstMinusNum = 0;
  int secondMinusNum = 0;
  int firstMultiplyNum = 0;
  int secondMultiplyNum = 0;
  double firstDivideNum = 0;
  double secondDivideNum = 0;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Unit 5 Calculator"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // Add Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(labelText: "First Number"),
                  // update the firstAddNum state
                  onChanged: (value) {
                    setState(() {
                      firstAddNum = int.parse(value);
                    });
                  },
                ),
              ),
              const Text(" + "),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(labelText: "Second Number"),
                    onChanged: (value) {
                    setState(() {
                      secondAddNum = int.parse(value);
                    });
                  },
                ),
              ),

              Text(' = $sum'),
              // 3.a Add an IconButton here
              IconButton(
                onPressed: () {
                  setState(() {
                    sum = firstAddNum + secondAddNum; // Update the sum and call setState
                  });
                },
                icon: const Icon(Icons.task_alt_outlined),
                tooltip: "Add",
              ),
              // b.b Add an button here
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    sum = 0;
                  });
                },
                child: Text("Clear"),
              ),
            ],
          ),

          // 3.c - Add the other operations
          // Minus Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(labelText: "First Number"),
                  // update the firstAddNum state
                  onChanged: (value) {
                    setState(() {
                      firstMinusNum = int.parse(value);
                    });
                  },
                ),
              ),
              const Text(" - "),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(labelText: "Second Number"),
                    onChanged: (value) {
                    setState(() {
                      secondMinusNum = int.parse(value);
                    });
                  },
                ),
              ),

              Text(' = $difference'),
              // 3.a Add an IconButton here
              IconButton(
                onPressed: () {
                  setState(() {
                    difference = firstMinusNum - secondMinusNum;
                  });
                },
                icon: const Icon(Icons.task_alt_outlined),
                tooltip: "Subtract",
              ),
              // b.b Add an button here
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    difference = 0;
                  });
                },
                child: Text("Clear"),
              ),
            ],
          ),

          // Multiplication Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(labelText: "First Number"),
                  // update the firstAddNum state
                  onChanged: (value) {
                    setState(() {
                      firstMultiplyNum = int.parse(value);
                    });
                  },
                ),
              ),
              const Text(" x "),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(labelText: "Second Number"),
                    onChanged: (value) {
                    setState(() {
                      secondMultiplyNum = int.parse(value);
                    });
                  },
                ),
              ),

              Text(' = $product'),
              // 3.a Add an IconButton here
              IconButton(
                onPressed: () {
                  setState(() {
                    product = firstMultiplyNum * secondMultiplyNum;
                  });
                },
                icon: const Icon(Icons.task_alt_outlined),
                tooltip: "Multiply",
              ),
              // b.b Add an button here
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    product = 0;
                  });
                },
                child: Text("Clear"),
              ),
            ],
          ),

          // Division Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(labelText: "First Number"),
                  // update the firstAddNum state
                  onChanged: (value) {
                    setState(() {
                      firstDivideNum = double.parse(value);
                    });
                  },
                ),
              ),
              const Text(" / "),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(labelText: "Second Number"),
                    onChanged: (value) {
                    setState(() {
                      secondDivideNum = double.parse(value);
                    });
                  },
                ),
              ),

              Text(' = $quotient'),
              // 3.a Add an IconButton here
              IconButton(
                onPressed: () {
                  setState(() {
                    quotient = firstDivideNum / secondDivideNum;
                  });
                },
                icon: const Icon(Icons.task_alt_outlined),
                tooltip: "Divide",
              ),
              // b.b Add an button here
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    quotient = 0;
                  });
                },
                child: Text("Clear"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
