import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void nextPage() {
    setState(() {
      Navigator.of(context).pushNamed('/second');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('News Today'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.newspaper, size: 200),
              ElevatedButton(
                  onPressed: nextPage, child: const Text('Today\'s News')),
            ],
          ),
        ));
  }
}
