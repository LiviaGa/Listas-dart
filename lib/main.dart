import 'package:flutter/material.dart';
import 'package:listas/contato.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Contacts';

    return MaterialApp(
      title: title,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text(title, style: TextStyle(color: Colors.white) ,),
            backgroundColor: Colors.blue,
            
          ),
          body: ListView.builder(
            itemCount: contatos.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text(contatos[index].nomeCompleto[0],
                      style: TextStyle(color: Colors.white)),
                ),
                title: Text(contatos[index].nomeCompleto),
                subtitle: Text(contatos[index].email),
              );
            },
          )),
    );
  }
}

List<String> linguagens = ['Java', 'C#', 'Python', 'JavaScript', 'Dart', 'Go'];

List<Contato> contatos = [
  Contato('Livia Gallafrio', 'lili@gmail.com'),
  Contato('Sophia de Sousa', 'Sophicooper@gmail.com'),
  Contato('Luis Miguel', 'LuisMiguel@gmail.com'),
  Contato('Alanzoka', 'alanzoka@gmail.com'),
  Contato('Macuco', 'Macuco@gmail.com'),
];
