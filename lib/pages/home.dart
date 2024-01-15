import 'package:flutter/material.dart';
import '../models/person.dart';
import '../widgets/card_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    void onTap() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
      );
    }

    Person person = Person(
      name: 'Aiden',
      birthDate: DateTime(2017, 12, 31),
    );
    int years = DateTime.now().difference(person.birthDate!).inDays ~/ 365;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Center(
            child: CardTile(person: person, years: years, onTap: onTap),
          ),
        ],
      ),
    );
  }
}
