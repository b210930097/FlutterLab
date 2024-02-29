import 'package:flutter/material.dart';
import 'package:lab/profile.dart';
import 'package:lab/weather.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Navigator(
        onGenerateRoute: (settings) {
          return MaterialPageRoute(
            builder: (context) => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      await Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Weather(),
                        ),
                      );
                      setState(() {});
                    },
                    child: const Text('Lab3'),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      await Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Profile(),
                        ),
                      );
                      setState(() {});
                    },
                    child: const Text('Lab4'),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      await Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Profile(),
                        ),
                      );
                      setState(() {});
                    },
                    child: const Text('Lab5'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
