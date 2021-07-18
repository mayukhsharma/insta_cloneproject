import 'package:flutter/material.dart';
import 'package:insta_clone/signup.dart';
import 'package:insta_clone/login.dart';

class Onboard extends StatelessWidget {
  const Onboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Center(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Image(
              image: NetworkImage(
                  'https://1000logos.net/wp-content/uploads/2017/02/Instagram-Logo.png'),
              height: 150,
              width: 200,
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: MaterialButton(
              child: Text('Login'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
                // Navigator.of(context).push(
                //   MaterialPageRoute(builder: (context) => SignUp()),
                // );
              },
              color: Colors.blue,
              textColor: Colors.white,
              elevation: 0,
              minWidth: double.maxFinite,
              height: 50,
            ),
          ),
          SizedBox(
            width: 100,
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 50,
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Signup()),
                      );
                    },
                    child: Text('Sign Up'),
                    style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Colors.blue)),
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
