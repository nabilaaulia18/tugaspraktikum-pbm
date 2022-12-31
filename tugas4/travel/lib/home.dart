import 'package:flutter/material.dart';
import 'package:splashscreen/header_drawer.dart';
import 'package:splashscreen/profil.dart';
import 'package:splashscreen/wisata_bali.dart';
import 'package:splashscreen/wisata_bandung.dart';
import 'package:splashscreen/wisata_bogor.dart';
import 'package:splashscreen/wisata_jakarta.dart';
import 'package:splashscreen/wisata_yogyakarta.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Travel App"),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const MyHeaderDrawer(),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Beranda"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text("Pengaturan"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.money),
                title: const Text("Berlangganan"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.people),
                title: const Text("Profil"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Profil()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text("Log Out"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(25),
        crossAxisCount: 2,
        children: <Widget>[
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(
                      Icons.home,
                      size: 70,
                      color: Colors.lime,
                    ),
                    Text("Home", style: TextStyle(fontSize: 15)),
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const WisataBandung()));
              },
              splashColor: Colors.blue,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/img/bandung.png',
                          fit: BoxFit.cover,
                          height: 100,
                          width: 120,
                        ),
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        "Wisata Bandung",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const WisataBogor()));
              },
              splashColor: Colors.blue,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/img/bogor.png',
                          fit: BoxFit.cover,
                          height: 100,
                          width: 120,
                        ),
                      ),
                      const SizedBox(height: 12),
                      const Text("Wisata Bogor",
                          style: TextStyle(fontSize: 15)),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const WisataJakarta()));
              },
              splashColor: Colors.blue,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/img/jakarta.png',
                          fit: BoxFit.cover,
                          height: 100,
                          width: 120,
                        ),
                      ),
                      const SizedBox(height: 12),
                      const Text("Wisata Jakarta",
                          style: TextStyle(fontSize: 15)),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const WisataYogyakarta()));
              },
              splashColor: Colors.blue,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/img/yogyakarta.png',
                          fit: BoxFit.cover,
                          height: 100,
                          width: 120,
                        ),
                      ),
                      const SizedBox(height: 12),
                      const Text("Wisata Yogyakarta",
                          style: TextStyle(fontSize: 15)),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const WisataBali()));
              },
              splashColor: Colors.blue,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/img/bali.png',
                          fit: BoxFit.cover,
                          height: 100,
                          width: 120,
                        ),
                      ),
                      const SizedBox(height: 12),
                      const Text("Wisata Bali", style: TextStyle(fontSize: 15)),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
