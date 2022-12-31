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
      theme: ThemeData(
        primaryColor: Colors.lime,
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.lime,
          foregroundColor: Colors.black,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.lime,
          foregroundColor: Colors.black,
        ),
        elevatedButtonTheme: const ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.lime),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController aliasesController =
      TextEditingController(text: 'Naura');
  TextEditingController realController =
      TextEditingController(text: 'Nabila Aulia Rahmah');
  bool isReavealed = false;
  String name = '';

  @override
  Widget build(BuildContext context) {
    name = isReavealed ? realController.text : aliasesController.text;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Praktikum 3'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              name,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ElevatedButton(
            style: const ButtonStyle(
              padding: MaterialStatePropertyAll(
                  EdgeInsets.symmetric(horizontal: 12, vertical: 8)),
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                ),
              ),
            ),
            onPressed: () {
              setState(() {
                isReavealed = !isReavealed;
              });
            },
            child: Text(
              'Tampilkan nama samaran',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Colors.black),
            ),
          ),
          const SizedBox(width: 12),
          FloatingActionButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Edit name'),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextField(
                          controller: realController,
                          maxLength: 25,
                        ),
                        const SizedBox(height: 12),
                        TextField(
                          controller: aliasesController,
                          maxLength: 25,
                        ),
                      ],
                    ),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('cancel'),
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {});
                          Navigator.pop(context);
                        },
                        child: const Text('ok'),
                      ),
                    ],
                  );
                },
              );
            },
            child: const Icon(Icons.text_fields),
          ),
        ],
      ),
    );
  }
}
