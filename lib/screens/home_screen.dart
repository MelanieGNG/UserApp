import 'package:flutter/material.dart';
import 'package:user_app/config/router.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
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
              Text('INICIO', style: TextStyle(fontSize: 28, color: Colors.white)),
              Icon(Icons.person, size: 120, color: Colors.white),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.profile);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purpleAccent,
                  foregroundColor: Colors.black,
                ),
                child: Text('CREAR PERFIL', style: TextStyle(fontWeight: FontWeight.bold,)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
