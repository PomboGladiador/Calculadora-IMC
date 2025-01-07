import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'models/user_data.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final box = Hive.box<UserData>('user_data');

    return Scaffold(
      appBar: AppBar(
        title: Text('Histórico de IMCs'),
      ),
      body: ValueListenableBuilder(
        valueListenable: box.listenable(),
        builder: (context, Box<UserData> items, _) {
          if (items.values.isEmpty) {
            return Center(child: Text('Nenhum dado armazenado.'));
          }

          return ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              final userData = items.getAt(index);
              return ListTile(
                title: Text(userData!.name),
                subtitle: Text(
                    'IMC: ${userData.bmi.toStringAsFixed(2)} - ${userData.weight}kg, ${userData.height}m'),
              );
            },
          );
        },
      ),
    );
  }
}
