import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController id = TextEditingController();
  TextEditingController password = TextEditingController();
  bool replacePassword = true;

  void enter(){
    if(id.text == 'admin' && password.text == 'admin123'){
      Navigator.of(context).pushReplacementNamed('/home');
    }
  }

  @override
  void initState() {
    super.initState();
    id.addListener(() {
      setState(() {});
    });
    password.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      body: Stack(
        children: [
          Image.asset('assets/images/Слой 1.png', width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height, fit: BoxFit.cover,),
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 16),
            child: Container(
              height: 430,
              width: MediaQuery.of(context).size.width-32,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 17),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 32,),
                    const Center(child: Text('Вход', style: TextStyle(fontSize: 17, height: 1.3, fontWeight: FontWeight.w700),)),
                    const SizedBox(height: 11,),
                    Center(child: Container(height: 1, width: 151, color: const Color.fromRGBO(255, 113, 4, 1),)),
                    const SizedBox(height: 44,),
                    const Text('Id сотрудника', style: TextStyle(fontSize: 15, height: 1.2,),),
                    const SizedBox(height: 4,),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color.fromRGBO(233, 233, 236, 1)),
                        borderRadius: const BorderRadius.all(Radius.circular(12)),
                        color: const Color.fromRGBO(244, 244, 244, 1)
                      ),
                      child: Stack(
                        children: [
                          TextField(
                            controller: id,
                            cursorColor: Colors.black,
                            decoration: const InputDecoration(
                              hintText: 'Введите id',
                              isDense: true,
                              contentPadding: EdgeInsets.fromLTRB(12,12,35,12,),
                              border: InputBorder.none,
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(255, 113, 4, 1)
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(12)),
                              )
                            ),
                          ),
                          Positioned(
                            top: 5,
                            right: 5,
                            child: (id.text.isNotEmpty)
                              ?GestureDetector(
                                onTap: ()=>id.clear(),
                                child: Image.asset('assets/images/ic_clear.png', height: 32,width: 32, fit: BoxFit.fitHeight,)
                              )
                              :const SizedBox()
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 44,),
                    const Text('Пароль', style: TextStyle(fontSize: 15, height: 1.2,),),
                    const SizedBox(height: 4,),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color.fromRGBO(233, 233, 236, 1)),
                          borderRadius: const BorderRadius.all(Radius.circular(12)),
                          color: const Color.fromRGBO(244, 244, 244, 1)
                      ),
                      child: Stack(
                        children: [
                          TextField(
                            controller: password,
                            cursorColor: Colors.black,
                            obscureText: replacePassword,
                            obscuringCharacter: '●',
                            decoration: const InputDecoration(
                              hintText: 'Введите пароль',
                              isDense: true,
                              contentPadding: EdgeInsets.fromLTRB(12,12,35,12,),
                              border: InputBorder.none,
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromRGBO(255, 113, 4, 1)
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(12)),
                              )
                            ),
                          ),
                          Positioned(
                              top: 5,
                              right: 5,
                              child: (password.text.isNotEmpty)
                                  ?GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      replacePassword=!replacePassword;
                                    });
                                  },
                                  child: Image.asset('assets/images/ic_eye.png', height: 32,width: 32, fit: BoxFit.fitHeight,)
                              )
                                  :const SizedBox()
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 56,),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushReplacementNamed('/home');
                      },
                      child: Container(
                        height: 54,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: (id.text.isNotEmpty && password.text.isNotEmpty)?const Color.fromRGBO(255, 113, 4, 1):const Color.fromRGBO(244, 244, 244, 1),
                          borderRadius: const BorderRadius.all(Radius.circular(12))
                        ),
                        child: const Center(child: Text('Войти', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Colors.white),)),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}