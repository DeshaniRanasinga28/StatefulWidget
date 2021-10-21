import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

int a = 0;

void increaseNumber(){
  setState(() {
    a++;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculation'),
      ),
      body: Center(
        child: Text('Number = ${a.toString()}'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          increaseNumber();
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}

