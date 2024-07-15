import 'package:flutter/material.dart';
import 'package:myfinance/widget/elevated_button.dart';
import 'package:myfinance/widget/text_field.dart';
import '../../global_variable.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Theme.of(context).primaryColor,
              Theme.of(context).secondaryHeaderColor,
            ],
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'assets/login.png',
                width: GlobalVariable.deviceWidth(context) * 0.6,
                height: GlobalVariable.deviceWidth(context) * 0.6,
              ),
            ),
            Text(
              'Login Form',
              style: Theme.of(context).primaryTextTheme.titleLarge,
            ),
            Text(
              'Lengkapi form login untuk menggunakan aplikasi',
              style: Theme.of(context).primaryTextTheme.titleSmall,
            ),
            const SizedBox(
              height: 20,
            ),
            const FormText(
              labelText: "Username",
              hintText: "Masukkan username anda",
              prefixIcon: Icon(Icons.person),
              backgroundColor: Colors.white,
              borderFocusColor: Colors.blue,
              obscureText: false,
            ),
            const SizedBox(
              height: 10,
            ),
            FormText(
              labelText: "Password",
              hintText: "Masukkan password anda",
              prefixIcon: const Icon(Icons.password),
              backgroundColor: Colors.white,
              borderFocusColor: Colors.blue,
              obscureText: _obscureText,
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
                child: Icon(
                  _obscureText ? Icons.visibility : Icons.visibility_off,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ButtonElevated(
              onPress: () => {Navigator.pushReplacementNamed(context, '/home')},
              text: 'Login',
              styleText: Theme.of(context).primaryTextTheme.displaySmall,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Belum punya akun?',
                      style: Theme.of(context).primaryTextTheme.displaySmall,
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    InkWell(
                      onTap: () => {Navigator.pushNamed(context, '/register')},
                      child: Text('Daftar Akun',
                          style: Theme.of(context)
                              .primaryTextTheme
                              .displaySmall!
                              .copyWith(fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
