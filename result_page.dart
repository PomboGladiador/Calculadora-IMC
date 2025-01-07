import 'package:flutter/material.dart';
import 'models/user_data.dart';

class ResultPage extends StatelessWidget {
  final UserData userData;

  const ResultPage({super.key, required this.userData});

  String _getBmiCategory(double bmi) {
    if (bmi < 18.5) {
      return 'Abaixo do peso';
    } else if (bmi < 24.9) return 'Peso normal';
    else if (bmi < 29.9) return 'Sobrepeso';
    else return 'Obesidade';
  }

  @override
  Widget build(BuildContext context) {
    final bmiCategory = _getBmiCategory(userData.bmi);
    return Scaffold(
      appBar: AppBar(
        title: Text('Resultado do IMC'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${userData.name}, seu IMC é ${userData.bmi.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Text(
              'Categoria: $bmiCategory',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Calcular Novamente'),
            ),
          ],
        ),
      ),
    );
  }
}
