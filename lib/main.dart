import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nexa Security',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const MyHomePage(title: 'Caique'),
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
  @override
  Widget build(BuildContext context) {
    List<String> images = [
      'https://placecats.com/300/200',
      'https://placecats.com/neo/300/200',
      'https://placecats.com/millie/300/150',
      'https://placecats.com/millie_neo/300/200',
      'https://placecats.com/neo_banana/300/200',
      'https://placecats.com/neo_2/300/200',
      'https://placecats.com/bella/300/200',
      'https://placecats.com/g/300/200',
      'https://placecats.com/300/200',
      'https://placecats.com/neo/300/200',
      'https://placecats.com/millie/300/150',
      'https://placecats.com/millie_neo/300/200',
      'https://placecats.com/neo_banana/300/200',
      'https://placecats.com/neo_2/300/200',
      'https://placecats.com/bella/300/200',
      'https://placecats.com/g/300/200',
      'https://placecats.com/300/200',
      'https://placecats.com/neo/300/200',
      'https://placecats.com/millie/300/150',
      'https://placecats.com/millie_neo/300/200',
      'https://placecats.com/neo_banana/300/200',
      'https://placecats.com/neo_2/300/200',
      'https://placecats.com/bella/300/200',
      'https://placecats.com/g/300/200',
      'https://placecats.com/300/200',
      'https://placecats.com/neo/300/200',
      'https://placecats.com/millie/300/150',
      'https://placecats.com/millie_neo/300/200',
      'https://placecats.com/neo_banana/300/200',
      'https://placecats.com/neo_2/300/200',
      'https://placecats.com/bella/300/200',
      'https://placecats.com/g/300/200',
      'https://placecats.com/300/200',
      'https://placecats.com/neo/300/200',
      'https://placecats.com/millie/300/150',
      'https://placecats.com/millie_neo/300/200',
      'https://placecats.com/neo_banana/300/200',
      'https://placecats.com/neo_2/300/200',
      'https://placecats.com/bella/300/200',
      'https://placecats.com/g/300/200',
      'https://placecats.com/300/200',
      'https://placecats.com/neo/300/200',
      'https://placecats.com/millie/300/150',
      'https://placecats.com/millie_neo/300/200',
      'https://placecats.com/neo_banana/300/200',
      'https://placecats.com/neo_2/300/200',
      'https://placecats.com/bella/300/200',
      'https://placecats.com/g/300/200',
      'https://placecats.com/300/200',
      'https://placecats.com/neo/300/200',
      'https://placecats.com/millie/300/150',
      'https://placecats.com/millie_neo/300/200',
      'https://placecats.com/neo_banana/300/200',
      'https://placecats.com/neo_2/300/200',
      'https://placecats.com/bella/300/200',
      'https://placecats.com/g/300/200',
      'https://placecats.com/300/200',
      'https://placecats.com/neo/300/200',
      'https://placecats.com/millie/300/150',
      'https://placecats.com/millie_neo/300/200',
      'https://placecats.com/neo_banana/300/200',
      'https://placecats.com/neo_2/300/200',
      'https://placecats.com/bella/300/200',
      'https://placecats.com/g/300/200',
      'https://placecats.com/300/200',
      'https://placecats.com/neo/300/200',
      'https://placecats.com/millie/300/150',
      'https://placecats.com/millie_neo/300/200',
      'https://placecats.com/neo_banana/300/200',
      'https://placecats.com/neo_2/300/200',
      'https://placecats.com/bella/300/200',
      'https://placecats.com/g/300/200',
      'https://placecats.com/300/200',
      'https://placecats.com/neo/300/200',
      'https://placecats.com/millie/300/150',
      'https://placecats.com/millie_neo/300/200',
      'https://placecats.com/neo_banana/300/200',
      'https://placecats.com/neo_2/300/200',
      'https://placecats.com/bella/300/200',
      'https://placecats.com/g/300/200',
      'https://placecats.com/300/200',
      'https://placecats.com/neo/300/200',
      'https://placecats.com/millie/300/150',
      'https://placecats.com/millie_neo/300/200',
      'https://placecats.com/neo_banana/300/200',
      'https://placecats.com/neo_2/300/200',
      'https://placecats.com/bella/300/200',
      'https://placecats.com/g/300/200',
      'https://placecats.com/300/200',
      'https://placecats.com/neo/300/200',
      'https://placecats.com/millie/300/150',
      'https://placecats.com/millie_neo/300/200',
      'https://placecats.com/neo_banana/300/200',
      'https://placecats.com/neo_2/300/200',
      'https://placecats.com/bella/300/200',
      'https://placecats.com/g/300/200',
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Nexa'),
        centerTitle: true,
      ),
      body: Center(
        child: GridView.builder(
          itemCount: images.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          itemBuilder:
              (context, index) => Container(
                height: 50,
                width: 50,

                margin: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(images[index]),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
        ),
      ),
    );
  }
}
