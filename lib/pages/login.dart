import 'package:flutter/material.dart';
import 'package:kartik/pages/signup.dart';
import 'package:kartik/pages/home_page.dart';



class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _login();
}

class _login extends State<login> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfffe699d),
        body:Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    transformAlignment: Alignment.bottomCenter,
                    padding: const EdgeInsets.all(10),
                    child:Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          SizedBox(
                            height: 20,
                            width: 30,
                          ),
                          Text(
                            'Flo!',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 40),
                          ),

                        ]
                    )
                ),
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      fillColor: Color(0xffffffff),
                      filled: true,
                      border: OutlineInputBorder(),
                      labelText: 'Email ',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: const InputDecoration(
                      fillColor: Color(0xffffffff),
                      filled: true,
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    //forgot password screen
                  },
                  child: const Text(' ',
                      style:TextStyle(
                        color: Colors.white,
                      )),
                ),
                Container(
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                        style:ElevatedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                        ),
                        child: const Text('Login',
                          style:TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        // Within the `FirstRoute` widget
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const HomePage()),
                          );

                        }
                    )
                ),
                Row(
                  children: <Widget>[
                    TextButton(
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        //signup screen
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const signup()),
                        );
                      },
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ],
            )
        )
    );
  }
}
