import 'package:flutter/material.dart';
import 'package:google_sheets/pets.dart';
import 'package:google_sheets/pets_sheets_api.dart';
import 'user_form_widget.dart';

class CreateSheetsPage extends StatelessWidget {
  const CreateSheetsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Teste'),
      centerTitle: true,
    ),
    body: Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(32),
      child: UserFormWidget(
        onSavedUser: (user) async {
          await PetsSheetsAPi.insert([user.toJson()]);
    },
      ),
    ),
  );
  Future insertUsers() async {
    final users = [
      User(id: 1, name: 'John', email: 'john@gmail.com', isBeginner: false),
      User(id: 2, name: 'Emma', email: 'emma@gmail.com', isBeginner: true),
      User(id: 3, name: 'Paul', email: 'paul@gmail.com', isBeginner: true),
      User(id: 4, name: 'Dean', email: 'dean@gmail.com', isBeginner: false),
      User(id: 5, name: 'Lisa', email: 'lisa@gmail.com', isBeginner: false),
    ];
    final jsonUsers = users.map((user) => user.toJson()).toList();
    await PetsSheetsAPi.insert(jsonUsers);
  }
}
