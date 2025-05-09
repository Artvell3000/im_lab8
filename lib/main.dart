import 'package:flutter/material.dart';
import 'package:im_lab8/model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'IM-Lab-8'),
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
  final model = Model();
  bool? isYes;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
                width: 400,
                child: TextField(
                  onEditingComplete: () {
                    setState(() {
                      isYes = model.answer;
                    });
                  },
                )),
            if (isYes != null) ...[
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  (isYes!) ? 'Да' : 'Нет',
                  style: TextStyle(color: (isYes!) ? Colors.green : Colors.red, fontSize: 30),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  DateTime.now().toString(),
                  style: const TextStyle(color: Colors.grey),
                ),
              )
            ]
          ],
        ),
      ),
    );
  }
}
