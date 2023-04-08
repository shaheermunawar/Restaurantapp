import 'package:flutter/material.dart';
import 'package:app3/dashboardPage.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text(
            'Cedrus Group Restaurant',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Login Screen',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Enter your Username or Email and Password',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: username,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Username/Email'),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: password,
                obscureText: true,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Password'),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Forgot Password',
              style: TextStyle(
              ),),
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
              child: ElevatedButton(
                
                child: const Text('Login',
                style: TextStyle(
             
                ),),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const DashboardPage()));
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Do not have an Account?'),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                )
              ],
            )
          ],
        ));
  }
}
