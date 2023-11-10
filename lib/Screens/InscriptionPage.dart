import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/Models/game.dart';
import '../Models/Inscription.dart';

class InscriptionPage extends StatelessWidget {
  InscriptionPage({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inscription'),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(labelText: 'Username'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Email'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your email';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Date of Birth'),
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Billing Address'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(),
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Process data.
                  }
                },
                child: Text(' s inscrire'),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Annuler'),
            ),
          ],
        ),
      ),
    );
  }
}
