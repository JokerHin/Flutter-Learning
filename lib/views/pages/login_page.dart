import 'package:first_app/views/widget_tree.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controllerEmail = TextEditingController(
    text: 'michelle@gmail.com',
  );
  TextEditingController controllerPw = TextEditingController(text: '123');
  String confirmedEmail = 'michelle@gmail.com';
  String confirmedPw = '123';

  @override
  void initState() {
    print('initState');
    super.initState();
  }

  @override
  void dispose() {
    controllerEmail.dispose();
    controllerPw.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: LayoutBuilder(
              builder: (context, constraints) {
                return FractionallySizedBox(
                  widthFactor: widthScreen > 500 ? 0.5 : 1.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Lottie.asset('assets/lotties/Home.json', height: 400.0),
                      TextField(
                        controller: controllerEmail,
                        decoration: InputDecoration(
                          hintText: 'Email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        onEditingComplete: () => setState(() {}),
                      ),
                      SizedBox(height: 10.0),
                      TextField(
                        controller: controllerPw,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        onEditingComplete: () => setState(() {}),
                      ),
                      SizedBox(height: 20.0),
                      FilledButton(
                        onPressed: () {
                          onLoginPressed();
                        },
                        style: FilledButton.styleFrom(
                          minimumSize: Size(double.infinity, 40.0),
                        ),
                        child: Text(widget.title),
                      ),
                      SizedBox(height: 50.0),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  void onLoginPressed() {
    if (confirmedEmail == controllerEmail.text &&
        confirmedPw == controllerPw.text) {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) {
            return WidgetTree();
          },
        ),
        (route) => false,
      );
    }
    ;
  }
}
