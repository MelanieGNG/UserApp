import 'package:flutter/material.dart';
import 'package:user_app/config/router.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController jobController = TextEditingController();

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
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(labelText: 'Nombre'),
                ),
                TextField(
                  controller: ageController,
                  decoration: InputDecoration(labelText: 'Edad'),
                  keyboardType: TextInputType.number,
                ),
                TextField(
                  controller: jobController,
                  decoration: InputDecoration(labelText: 'Ocupación'),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      AppRoutes.userProfile,
                      arguments: {
                        'name': nameController.text,
                        'age': ageController.text,
                        'job': jobController.text,
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow,
                    foregroundColor: Colors.black,
                  ),
                  child: Text('Guardar y Ver Perfil'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
