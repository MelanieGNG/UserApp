import 'package:flutter/material.dart';

class UserProfileScreen extends StatelessWidget {
  final String name;
  final String age;
  final String job;

  UserProfileScreen({required this.name, required this.age, required this.job});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.teal, Colors.purple],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Nombre: $name', style: TextStyle(fontSize: 20, color: Colors.white)),
              Text('Edad: $age', style: TextStyle(fontSize: 20, color: Colors.white)),
              Text('Ocupación: $job', style: TextStyle(fontSize: 20, color: Colors.white)),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.popUntil(context, (route) => route.isFirst);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow, // Color del botón
                  foregroundColor: Colors.black, // Color del texto
                ),
                child: Text('Regresar a Inicio'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
