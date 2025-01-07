import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'models/user_data.dart';
import 'package:intl/intl.dart'; // Para formatar datas

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();
  String? name;
  double? weight;
  double? height;
  Box<UserData>? userBox;

  @override
  void initState() {
    super.initState();
    userBox = Hive.box<UserData>('user_data');
  }

  void _calculateAndSaveBMI() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      final bmiValue = weight! / (height! * height!);

      final userData = UserData(
        name: name!,
        weight: weight!,
        height: height!,
        bmi: bmiValue,
        date: DateTime.now(),
      );

      userBox!.add(userData);

      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: Text('Olá, ${name!}!'),
          content: Text(
            'Seu IMC é ${bmiValue.toStringAsFixed(2)}',
            style: TextStyle(fontSize: 24),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Fechar'),
            ),
          ],
        ),
      );

      setState(() {}); // Atualiza a tela para mostrar os novos dados
    }
  }

  @override
  Widget build(BuildContext context) {
    // Obtém os últimos 5 registros
    List<UserData> lastFiveEntries = userBox!.values.toList().reversed.take(5).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora de IMC'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Formulário de entrada
            Form(
              key: _formKey,
              child: Column(
                children: [
                  // Campo para o nome
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Nome',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Insira seu nome';
                      }
                      return null;
                    },
                    onSaved: (value) => name = value,
                  ),
                  SizedBox(height: 10),
                  // Campo para o peso
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Peso (kg)',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.numberWithOptions(decimal: true),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Insira seu peso';
                      }
                      if (double.tryParse(value.replaceAll(',', '.')) == null) {
                        return 'Insira um número válido';
                      }
                      return null;
                    },
                    onSaved: (value) => weight = double.parse(value!.replaceAll(',', '.')),
                  ),
                  SizedBox(height: 10),
                  // Campo para a altura
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Altura (m)',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.numberWithOptions(decimal: true),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Insira sua altura';
                      }
                      if (double.tryParse(value.replaceAll(',', '.')) == null) {
                        return 'Insira um número válido';
                      }
                      return null;
                    },
                    onSaved: (value) => height = double.parse(value!.replaceAll(',', '.')),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _calculateAndSaveBMI,
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      textStyle: TextStyle(fontSize: 18),
                    ),
                    child: Text('Calcular IMC'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Divider(),
            // Lista dos últimos 5 cálculos
            Expanded(
              child: lastFiveEntries.isNotEmpty
                  ? ListView.builder(
                      itemCount: lastFiveEntries.length,
                      itemBuilder: (context, index) {
                        final entry = lastFiveEntries[index];
                        final formattedDate = DateFormat('dd/MM/yyyy HH:mm').format(entry.date);
                        return Card(
                          elevation: 3,
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: ListTile(
                            leading: Icon(Icons.history, color: Colors.teal),
                            title: Text(
                              '${entry.name} - IMC: ${entry.bmi.toStringAsFixed(2)}',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              'Peso: ${entry.weight} kg | Altura: ${entry.height} m',
                              style: TextStyle(fontSize: 14),
                            ),
                            trailing: Text(
                              formattedDate,
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                        );
                      },
                    )
                  : Center(
                      child: Text(
                        'Nenhum cálculo recente',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
