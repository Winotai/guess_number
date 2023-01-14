// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  State<GamePage> createState() => _GamePagesState();
}

class _GamePagesState extends State<GamePage> {
  //var space = 10.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Container(
                decoration: const BoxDecoration(
                    color: Colors.white, shape: BoxShape.circle),
                child: const Icon(
                  Icons.accessibility,
                  color: Colors.black,
                )),
            const SizedBox(width: 10),
            const Text('GUESS THE NUMBER'),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                //color: Colors.pink,
                child: Center(
                  child: Text(
                    'Please guess the number between 1 and 100',
                    style: TextStyle(
                      fontSize: 25,
                      color: Theme.of(context).primaryColor,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                //color: Colors.blue,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter your guess',
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: OutlinedButton(
                          onPressed: () {
                            //todo:
                          },
                          child: Text('GUESS'),
                        )
                    )
                  ],
                ),
              ),
            ),
            /*Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('Please guess the number between 1 and 100',
                  style: TextStyle(
                      fontSize: 25,
                      color: Theme.of(context).primaryColor,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                  ),
                textAlign: TextAlign.center,
              ),
            ),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter your guess',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
                child: OutlinedButton(
                  onPressed: () {
                    //todo:
                  },
                  child: Text('GUESS'),
                )
            )*/
          ],
        ),
      ),
    );
  }
}
