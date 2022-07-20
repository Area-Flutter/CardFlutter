import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const [
    'Megaman',
    'Metal Geer',
    'Super Smash',
    'Final Fantasy'
  ];

  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Tipo 2'),
      ),
      body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, index) => ListTile(
                leading: const Icon(
                  Icons.access_time_sharp,
                  color: AppTheme.primary,
                ),
                title: Text(options[index]),
                trailing: const Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: AppTheme.primary,
                ),
                onTap: () {
                  final game = options[index];
                  print(game);
                },
              ),
          separatorBuilder: (_, __) => const Divider()),
    );
  }
}
