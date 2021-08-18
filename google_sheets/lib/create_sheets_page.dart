import 'package:flutter/material.dart';
import 'package:google_sheets/pets.dart';
import 'package:google_sheets/pets_sheets_api.dart';
import 'main.dart';
import 'package:google_sheets/main.dart';
import 'buttonwidget.dart';

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
      child: ButtonWidget(
        text: 'Save',
        onClicked: () async {
          final user = {
            PetsFields.id: 1,
            PetsFields.name: 'Paul',
            PetsFields.email: 'paul@gmail.com',
            PetsFields.isBeginner: true,
    };
          await PetsSheetsAPi.insert([user]);
    },
      ),
    ),
  );
}
