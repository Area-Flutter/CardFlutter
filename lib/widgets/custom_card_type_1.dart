import 'package:flutter/material.dart';
import '../themes/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.photo_album_outlined,
              color: AppTheme.primary,
            ),
            title: Text('Soy un Título'),
            subtitle: Text(
                'Lorem et adipisicing ex cupidatat deserunt dolore. Labore ea laborum consectetur qui. Sunt esse irure veniam minim amet nulla. Ullamco ipsum incididunt excepteur amet mollit dolor. Id consectetur proident excepteur reprehenderit culpa labore excepteur amet esse ea proident. Et mollit voluptate sunt ipsum sit laborum aliqua proident laboris.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5.0), //Separación
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancel'),
                ),
                TextButton(onPressed: () {}, child: const Text('Ok'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
