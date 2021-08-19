import 'package:flutter/material.dart';
import 'package:google_sheets/user_sheets_api.dart';
import 'user_form_widget.dart';
import 'user.dart';
import 'navigate_users_widget.dart';

class ModifySheetsPage extends StatefulWidget {
  const ModifySheetsPage({Key? key}) : super(key: key);

  @override
  _ModifySheetsPageState createState() => _ModifySheetsPageState();
}

class _ModifySheetsPageState extends State<ModifySheetsPage> {
  List <User> users = [];
  int index = 0;

  @override
  void initState(){
    super.initState();

    getUsers();
  }

  Future getUsers() async {
    final users = await UserSheetsApi.getAll();
    setState(() {
      this.users = users;
    });
  }
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text("Google Spread Sheet API"),
      centerTitle: true,
    ),
    body: Center(
      child: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.all(16),
        children: [
          UserFormWidget(
            user: users.isEmpty ? null : users[index],

            onSavedUser: (user) async {
            },
          ),
          const SizedBox(height: 16),
          if(users.isNotEmpty) buildUserControls(),
        ]
      ),

    ),
  );

  Widget buildUserControls() => NavigateUsersWidget(
    text : '${index + 1}/${users.length} Users',
    onClickedNext : () {
      final nextIndex = index >= users.length - 1 ? 0 : index + 1;

      setState(() => index = nextIndex);
    },
    onClickedPrevious: () {
      final previousIndex = index <= 0 ? users.length - 1 : index - 1;

      setState(() => index = previousIndex);
    },
  );
}
