import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('image/MyImage.jpeg'),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Vimarsh Pandey",
                style: TextStyle(
                  fontFamily: 'Borel',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Software Developer',
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 137, 136, 136),
                ),
              ),
              const SizedBox(
                height: 25,
                width: 250,
                child: Divider(),
              ),
              Card(
                color: Colors.grey[300],
                margin:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.call,
                        size: 30,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '+91 7897294086',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.grey[300],
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.email,
                        size: 30,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'vimarsh240401@gmail.com',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
