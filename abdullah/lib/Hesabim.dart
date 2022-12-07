import 'package:abdullah/main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class Hesabim extends StatelessWidget {
  static const String _title = 'KARADAŞ A.Ş';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      color: Colors.black,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(_title),
          backgroundColor: Color.fromARGB(255, 255, 0, 0),
        ),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
 





  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return 
                    Container(
                        height: 50,
                        width: 150,
                        padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                        child: ElevatedButton(
                            child: const Text('Çıkış Yap'),
                            onPressed: () {
                              FirebaseAuth.instance.signOut().then((value) {
                                print("Signed Out");
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Giris()));
                              });
                            }));


  }
}
