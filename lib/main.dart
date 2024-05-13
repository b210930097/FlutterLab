import 'package:flutter/material.dart';
import 'package:lab/Lab3/weather.dart';
import 'package:lab/Lab4/profile.dart';
import 'package:lab/Lab5/Calculator.dart';
import 'package:lab/Lab6/plan_creator_screen.dart';
import 'package:lab/Lab6/plan_provider.dart';

void main() {
  runApp(PlanProvider(child: const MyApp()));
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
      // theme: ThemeData(primarySwatch: Colors.purple),
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
                          builder: (context) => Calculator(),
                        ),
                      );
                      setState(() {});
                    },
                    child: const Text('Lab5'),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      await Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => PlanCreatorScreen()),
                      );
                      setState(() {});
                    },
                    child: const Text('Lab6'),
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
