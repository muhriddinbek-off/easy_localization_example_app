import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Easy Localization'),
      ),
      body: Column(
        children: [
          ListTile(
            title: const Text('home', style: TextStyle(fontSize: 22)).tr(),
          ),
          ListTile(
            title: const Text('profile', style: TextStyle(fontSize: 22)).tr(),
          ),
          ListTile(
            title: const Text('signup', style: TextStyle(fontSize: 22)).tr(),
          ),
          ListTile(
            title: const Text('registar', style: TextStyle(fontSize: 22)).tr(),
          ),
          ListTile(
            title: const Text('hello', style: TextStyle(fontSize: 22)).tr(args: ['Adham']),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      context.setLocale(const Locale('uz', 'UZ'));
                    });
                  },
                  child: const Text("O'zbek tili")),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      context.setLocale(const Locale('en', 'EN'));
                    });
                  },
                  child: const Text("Ingliz tili")),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      context.setLocale(const Locale('ru', 'RU'));
                    });
                  },
                  child: const Text("Rus tili")),
            ],
          )
        ],
      ),
    );
  }
}
