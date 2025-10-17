import 'package:flutter/material.dart';

class Reservas extends StatelessWidget {
  const Reservas ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text('Reservaciones y Disponibilidad '),
        ),
        body:IconButton(icon:Icon(Icons.favorite),onPressed: (){})
      );
  }
}

