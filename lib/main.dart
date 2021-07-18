import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'details.dart';

void main() {
  runApp(MyApp(
    items: List<String>.generate(3, (i) => 'Photo ${i + 1}'),
  ));
}

class MyApp extends StatelessWidget {
  final List<String> items;

  MyApp({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = 'Photo album';

    return MaterialApp(
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('${items[index]}'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyDetails(items[index])));
              },
            );
          },
        ),
      ),
    );
  }
}
