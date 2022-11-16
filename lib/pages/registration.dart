// ?

import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                const  SizedBox(height: 30,),
                  Padding(padding: EdgeInsets.fromLTRB(20, 20, 15, 10),
                  child: TextFormField(
                    validator: ((value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter some text';
                      }
                      return null;
                    }),
                    decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)))),)
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
