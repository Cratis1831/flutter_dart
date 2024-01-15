import 'package:flutter/material.dart';

import '../models/person.dart';

class CardTile extends StatelessWidget {
  const CardTile({
    super.key,
    required this.person,
    required this.years,
    required this.onTap,
  });

  final Person person;
  final int years;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).primaryColor,
        ),
        width: MediaQuery.of(context).size.width * 0.8,
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.person, color: Theme.of(context).primaryColorLight),
              title: Text(person.name, style: TextStyle(color: Theme.of(context).primaryColorLight)),
              subtitle: Text('Birthday: ${person.birthday}. \nYou were born $years years ago',
                  style: TextStyle(color: Theme.of(context).primaryColorLight)),
            ),
          ],
        ),
      ),
    );
  }
}
