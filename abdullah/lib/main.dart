import 'package:abdullah/Hesabim.dart';
import 'package:abdullah/Register.dart';
import 'package:abdullah/firebase_options.dart';
import 'package:abdullah/loginScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';



Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(Giris());
}


class Giris extends StatelessWidget {


  static const String _title = 'KARADAŞ A.Ş';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      color: Colors.black,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title),
          backgroundColor: Color.fromARGB(255, 255, 0, 0),),
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
  TextEditingController nameController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return
      Container(
        constraints: const BoxConstraints.expand(),
    decoration: const BoxDecoration(
    image: DecorationImage(
    image: AssetImage("assets/images/11.jpg"), fit: BoxFit.cover)),

      child: Padding(

        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),

            ),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(20),
                child: const Text(
                  'GİRİŞ',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: _emailTextController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.mail, color: Colors.black,),
                  labelText: 'E-Posta ',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: _passwordTextController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock, color: Colors.black,),
                  labelText: 'ŞİFRE',
                ),
              ),
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(

                child: const Text('GİRİŞ YAP'),
                onPressed: () {
                  FirebaseAuth.instance.signInWithEmailAndPassword(email: _emailTextController.text,
                      password: _passwordTextController.text).then((value) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => GirisSayfasi()));
                  })..onError((error, stackTrace) {
                    print("Error ${error.toString()}");
                  });

                },

              ),
            ),
            Row(
              children: <Widget>[
                const Text('Üye değil misiniz?',),
                TextButton(
                  child: const Text(
                    'ÜYE OL',
                    style: TextStyle(fontSize: 20,color:Colors.red),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Register()));
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        )));
  }
}
