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
            appBar: AppBar(
              backgroundColor: Colors.blue,
              title: const Text('hello'),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: ListView.builder(
                      itemCount: 100,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.blue,
                            backgroundImage: NetworkImage(
                                'https://th.bing.com/th/id/OIP.vNpR-4DYMRCXEEpfrAzLXwHaE8?rs=1&pid=ImgDetMain'),
                          ),
                          title: Text('Selena'),
                          subtitle: Text('hello '),
                          trailing: Text('3:30 pm'),
                        );
                      }),
                )
              ],
            )));
  }
}
