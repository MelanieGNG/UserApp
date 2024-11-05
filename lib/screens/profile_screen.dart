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
                Text('INGRESA LOS SIGUIENTES DATOS:', style: TextStyle(fontSize: 20, color: Colors.white)),
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(labelText: 'Nombre', labelStyle: TextStyle(color: Colors.white)),
                ),
                TextField(
                  controller: ageController,
                  decoration: InputDecoration(labelText: 'Edad', labelStyle: TextStyle(color: Colors.white)),
                  keyboardType: TextInputType.number,
                ),
                TextField(
                  controller: jobController,
                  decoration: InputDecoration(labelText: 'Ocupación', labelStyle: TextStyle(color: Colors.white)),
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
                    backgroundColor: Colors.purpleAccent,
                    foregroundColor: Colors.black,
                  ),
                  child: Text('GUARDAR Y VER PERFIL', style: TextStyle(fontWeight: FontWeight.bold,)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
