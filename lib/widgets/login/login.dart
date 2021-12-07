import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController id = TextEditingController();
  TextEditingController password = TextEditingController();

  void enter(){
    if(id.text == 'admin' && password.text == 'admin123'){
      Navigator.of(context).pushReplacementNamed('/home');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: id,
              cursorColor: Colors.black,
              decoration: const InputDecoration(
                labelText: 'ID сотрудника',
                labelStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)
                ),
                isDense: true,
                contentPadding: EdgeInsets.all(15),
              ),
            ),
            const SizedBox(height: 30,),
            TextField(
              controller: password,
              cursorColor: Colors.black,
              decoration: const InputDecoration(
                labelText: 'Пароль',
                labelStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal)
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)
                ),
                isDense: true,
                contentPadding: EdgeInsets.all(15)
              ),
            ),
            const SizedBox(height: 30,),
            GestureDetector(
              onTap: enter,
              child: Container(
                height: 40,
                width: 150,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 122, 1, 1),
                  borderRadius: BorderRadius.all(Radius.circular(6))
                ),
                child: const Center(child: Text('Вход', style: TextStyle(color: Colors.white, fontSize: 16),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
