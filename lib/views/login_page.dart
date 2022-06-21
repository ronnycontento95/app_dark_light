import 'package:flutter/material.dart';

import '../generated/l10n.dart';

class LoginPage extends StatefulWidget {
  //Variable que se envia para el cambio de dark a light ojo
  var ChangeTheme;
  LoginPage(this.ChangeTheme);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: () {
          widget.ChangeTheme(Theme.of(context).brightness == Brightness.light
              ? ThemeMode.dark
              : ThemeMode.light);
        },
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                S.of(context).Welcome,
                style: Theme.of(context).textTheme.headline6,
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  S.of(context).SubWelcome,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
              _emailInput(context),
              _passwordInput(context),
              _sendButton(context),
            ],
          ),
        ),
      ),
    ));
  }
}

Widget _emailInput(BuildContext context) {
  return Container(
    margin: const EdgeInsets.only(top: 40.0),
    padding: const EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: const Color.fromRGBO(142, 142, 147, 1.2),
        borderRadius: BorderRadius.circular(30.0)),
    child: const TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: 'email',
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}
Widget _passwordInput(BuildContext context) {

  return Container(
    margin: const EdgeInsets.only(top: 40.0),
    padding: const EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: const Color.fromRGBO(142, 142, 147, 1.2),
        borderRadius: BorderRadius.circular(30.0)),
    child: const TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: 'password',
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}

Widget _sendButton(BuildContext context) {
  return Container(
    width: 450.0,
    height: 55.0,
    margin: EdgeInsets.only(top: 30.0),
    child: ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(Theme.of(context).primaryColor),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0)))),
      child: Text(S.of(context).Send),
    ),
  );
}
