import 'package:flutter/material.dart';
import 'package:insta_clone/login.dart';
import 'package:insta_clone/onboarding.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Image(
                image: NetworkImage(
                    'https://1000logos.net/wp-content/uploads/2017/02/Instagram-Logo.png'),
                height: 150,
                width: 200,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Username',
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Confirm Password',
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Onboard()),
                    );
                  },
                  child: Text('Sign up'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  elevation: 0,
                  minWidth: double.maxFinite,
                  height: 50,
                ),
              ),
              Row(children: <Widget>[
                Expanded(
                  child: new Container(
                      margin: const EdgeInsets.only(left: 15.0, right: 15.0),
                      child: Divider(
                        color: Colors.grey,
                        height: 50,
                      )),
                ),
                Text("OR", style: TextStyle(color: Colors.grey)),
                Expanded(
                  child: new Container(
                      margin: const EdgeInsets.only(left: 15.0, right: 15.0),
                      child: Divider(
                        color: Colors.grey,
                        height: 100,
                      )),
                ),
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Have an account?",
                    style: TextStyle(color: Colors.grey),
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                    child: Text('Log in'),
                    color: Colors.white30,
                    textColor: Colors.blue,
                    elevation: 0,
                    //minWidth: double.maxFinite,
                    // height: 50,
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
