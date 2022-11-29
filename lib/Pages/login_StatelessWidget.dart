import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class login_StatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(
            "assets/images/undraw_Engineer.png",
            fit: BoxFit.contain,
            height: 500,
            width: 1000,
          ),
          const SizedBox(
            height: 30.0,
          ),
          const Text(
            "Welcome",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 2.0, horizontal: 280.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Enter UserName",
                    labelText: "User Name",
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password",
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                  style: TextButton.styleFrom(),
                  child: const Text("Login"),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
