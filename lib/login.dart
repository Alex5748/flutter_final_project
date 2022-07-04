import 'package:flutter/material.dart';
import 'package:flutter_final_project/bottom_nav.dart';
import 'package:flutter_final_project/home.dart';

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login In'),
        centerTitle: true,
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
              child: Column(
            children: [
              Image(
                image: AssetImage(
                  'asset/mountain.png',
                ),
                height: 250,
                width: 250,
              ),
              SizedBox(
                height: 10,
              ),
            ],
          )),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: const Text(
              'Login to your account',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Color.fromARGB(255, 5, 117, 208),
                  fontFamily: 'Font30',
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: TextFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 226, 222, 222),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                hintText: 'Email',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  hintText: 'password',
                  suffixIcon: Icon(Icons.remove_red_eye_outlined)),
            ),
          ),
          Row(),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: ElevatedButton(
                onPressed: (() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return bottom_nav();
                  }));
                }),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.purple)),
                child: Text(
                  'Log In',
                  style: TextStyle(fontSize: 20),
                )),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 2, 0, 3),
            child: Row(
              children: [
                Text(
                  'Don`t have an account? ',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Sign up',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      fontSize: 17),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
