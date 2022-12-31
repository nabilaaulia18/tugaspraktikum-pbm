import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.lime,
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: Colors.lime,
            foregroundColor: Colors.black,
          ),
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.lime,
            foregroundColor: Colors.black,
          )),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  double size = 12;

  @override
  Widget build(BuildContext context) {
    bool isMaxSize() {
      if (size > 128) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Ukuran sudah maksimal')),
        );

        return false;
      }

      return true;
    }

    bool isMinSize() {
      if (size < 1) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Ukuran sudah minimal')),
        );

        return false;
      }

      return true;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Praktikum 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Selamat Datang',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: size,
              ),
            ),
            Text('Ukuran font : ${size.toInt()}'),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              heroTag: 'increase',
              onPressed: () {
                if (isMaxSize()) {
                  setState(() {
                    size++;
                  });
                }
              },
              child: const Icon(Icons.add),
            ),
            const SizedBox(width: 12),
            FloatingActionButton(
              heroTag: 'decrease',
              onPressed: () {
                if (isMinSize()) {
                  setState(() {
                    size--;
                  });
                }
              },
              child: const Icon(Icons.remove),
            ),
            const SizedBox(width: 12),
            FloatingActionButton(
              heroTag: 'random',
              onPressed: () {
                setState(() {
                  size = Random().nextDouble() * 128;
                });
              },
              child: const Icon(Icons.refresh),
            ),
          ],
        ),
      ),
    );
  }
}
