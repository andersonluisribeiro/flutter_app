import 'package:flutter/material.dart';

void main() => runApp(PetSaoJoaoApp());

class PetSaoJoaoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FormLogin(),
    );
  }
}

class FormLogin extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return FormLoginState();
  }
}

class FormLoginState extends State<FormLogin>{
  final TextEditingController _loginController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _loginController,
              decoration: InputDecoration(
                labelText: 'Usuário',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              obscureText: true,
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Senha',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Builder(
              builder: (context) => RaisedButton(
                color: Colors.blue,
                child: Text('Entrar'),
                onPressed: () {
                  String login = _loginController.text.trim();
                  String password = _passwordController.text.trim();
                  String result = 'Login inválido';

                  if(login == "admin" && password == 'petsaojoao'){
                    result = 'Login efetuado com sucesso';
                  }

                  Scaffold.of(context).showSnackBar(SnackBar(
                    content: Text(result),
                  ));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
