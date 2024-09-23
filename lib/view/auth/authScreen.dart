import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AuthScreen extends StatefulWidget {
  static const String routeName = '/auth-screem';
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Layaway"),
          backgroundColor: Colors.orange,
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Text(
                "Sign in with your email and password.",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Sign In",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(fontSize: 11),
                      ))
                ],
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Email or Phone number",
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password",
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CheckboxListTile(
                value: true,
                onChanged: (value) {},
                title: Text("Show Password"),
              ),
              CheckboxListTile(
                value: true,
                onChanged: (value) {},
                title: Text("Keep me signed in."),
              ),
              SizedBox(
                height: 5,
              ),
              InkWell(
                onTap: () {
                  print("CLICK");
                },
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width / 2 - 100,
                      vertical: 5),
                  decoration: BoxDecoration(color: Colors.orange[600]),
                  child: const Text("Sign In"),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Divider(
                thickness: 0.4,
                color: Colors.black87,
              ),
              SizedBox(
                height: 5,
              ),
              Text("Shop Smart with Layaway"),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width / 2 - 100,
                    vertical: 5),
                decoration: BoxDecoration(color: Colors.orange[600]),
                child: const Text("Create Account"),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Terms and Conditions",
                      style: TextStyle(fontSize: 11),
                    )
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Privacy Policy",
                      style: TextStyle(fontSize: 11),
                    )
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "About Us",
                      style: TextStyle(fontSize: 11),
                    )
                  ),
                ],
              ),
            ],
          ),
        )));
  }
}
