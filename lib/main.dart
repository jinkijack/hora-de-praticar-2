import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Imagem Flutter',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isTextVisible = false;

  void _toggleTextVisibility() {
    setState(() {
      isTextVisible = !isTextVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'MEU APP',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: _toggleTextVisibility,
            child: const Text(
              'Clique para proseguir',
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
          ),
          Image.network(
            'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',
            width: 650,
            height: 450,
            fit: BoxFit.cover,
          ),
          if (isTextVisible)
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.all(16.0),
                child: const Text(
                  'Este é o Mascote do Flutter',
                  style: TextStyle(
                    color: Colors.lightBlue,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
