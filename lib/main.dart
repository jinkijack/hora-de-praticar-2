import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Hello World',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  // Função para abrir um URL no navegador
  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            const UserAccountsDrawerHeader(
              accountName: Text('Tiago Mateus Carvalho'),
              accountEmail: Text('tiagomc123@hotmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text(
                  'TC',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.article_outlined),
              title: const Text('Curso de Angular'),
              onTap: () {
                _launchURL('https://www.youtube.com/watch?v=vJt_K1bFUeA&t=1s');
              },
            ),
            ListTile(
              leading: const Icon(Icons.article_outlined),
              title: const Text('Curso de Java'),
              onTap: () {
                _launchURL('https://www.youtube.com/watch?v=V5I11DRE-1M');
              },
            ),
            ListTile(
              leading: const Icon(Icons.article_outlined),
              title: const Text('Curso de IA generativa'),
              onTap: () {
                _launchURL('https://www.youtube.com/watch?v=gozr-2677-0');
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text(
          'Hello, World!',
        ),
      ),
    );
  }
}
