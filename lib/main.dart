import 'package:flutter/material.dart';

main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Flutter sample',
      theme:ThemeData(
        primaryColor: const Color.fromARGB(255, 71, 87, 151),//color fo app is given as loading color etc
      ),
      home:HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _textController = TextEditingController();

  String _displayText = 'Text will be displayed here';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Padding(
          padding:const EdgeInsets.all(20) ,
          child: Container(
            color: const Color.fromARGB(255, 216, 215, 159),
            child: Column(
              children: [
              TextField(
                controller: _textController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Type something',
                ),
              ), //area to add text
              ElevatedButton(
                onPressed: (){
                  //Get data
                  print(_textController.text);
                  setState(() {
                    _displayText = _textController.text;
                  });
                },
              child: const Text('Click Here'),
              ),
              Text(_displayText),
            ],
            ),
          ),
        ),
      ),
    );
  }
}