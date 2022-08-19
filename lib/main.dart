import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: column(),
    );
  }
}

class column extends StatefulWidget {
  const column({Key? key}) : super(key: key);

  @override
  State<column> createState() => _columnState();
}

class _columnState extends State<column> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(120),
            margin: const EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: Colors.greenAccent,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.camera),
            label: const Text('camera'),
          ),
          Container(
            padding: const EdgeInsets.all(120),
            margin: const EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: Colors.greenAccent,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.ac_unit),
            trailing: Icon(Icons.camera),
            title: Text('Card'),
            subtitle: Text('flutter card widget'),
          )
        ],
      ),
    );
  }
}
