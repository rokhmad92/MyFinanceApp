import 'package:flutter/material.dart';
import 'package:myfinance/widget/elevated_button.dart';
import 'package:myfinance/widget/number_field.dart';
import 'package:myfinance/widget/text_field.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
            const SizedBox(height: 20),
            Text(
              'Daftar Akun',
              style: Theme.of(context).primaryTextTheme.titleLarge,
            ),
            Text(
              'Daftar akun untuk bisa login ke aplikasi, lengkapi semua form tersebut.',
              style: Theme.of(context).primaryTextTheme.titleSmall,
            ),
            const SizedBox(
              height: 20,
            ),
            const FormText(
              labelText: "Email",
              hintText: "Masukkan Email anda",
              prefixIcon: Icon(Icons.person),
              backgroundColor: Colors.white,
              borderFocusColor: Colors.blue,
            ),
            const SizedBox(
              height: 10,
            ),
            const FormNumber(
              labelText: "No Hp",
              hintText: "Masukkan No Hp anda",
              prefixIcon: Icon(Icons.person),
              backgroundColor: Colors.white,
              borderFocusColor: Colors.blue,
            ),
            const SizedBox(
              height: 10,
            ),
            const FormText(
              labelText: "Username",
              hintText: "Masukkan username anda",
              prefixIcon: Icon(Icons.person),
              backgroundColor: Colors.white,
              borderFocusColor: Colors.blue,
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
              onPress: () =>
                  {Navigator.pushReplacementNamed(context, 'userPage')},
              text: 'Daftar',
              styleText: Theme.of(context).primaryTextTheme.displayMedium,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sudah punya akun?',
                      style: Theme.of(context).primaryTextTheme.titleSmall,
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    InkWell(
                      onTap: () => {Navigator.pop(context)},
                      child: Text('Login Akun',
                          style: Theme.of(context)
                              .primaryTextTheme
                              .titleSmall!
                              .copyWith(
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1)),
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
