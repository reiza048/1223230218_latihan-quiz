import 'package:flutter/material.dart';
import 'movie_list.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void login() {

    String username = usernameController.text;
    String password = passwordController.text;

    if (username == "218" && password == "218") {

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => MovieListPage(),
        ),
      );

    } else {

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Login gagal"),
        ),
      );

    }

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text("Login"),
      ),

      body: Padding(
        padding: EdgeInsets.all(20),

        child: Column(

          children: [

            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                labelText: "Username",
              ),
            ),

            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
              ),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: login,
              child: Text("Login"),
            )

          ],

        ),

      ),

    );

  }
}