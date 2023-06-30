import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:rocket_help/screens/home_nocall.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const MaterialColor customColor = MaterialColor(
      0xFF00875F,
      <int, Color>{
        50: Color(0xFF00875F),
        100: Color(0xFF00875F),
        200: Color(0xFF00875F),
        300: Color(0xFF00875F),
        400: Color(0xFF00875F),
        500: Color(0xFF00875F),
        600: Color(0xFF00875F),
        700: Color(0xFF00875F),
        800: Color(0xFF00875F),
        900: Color(0xFF00875F),
      },
    );

    return MaterialApp(
      title: 'Login',
      theme: ThemeData(
        primarySwatch: customColor,
      ),
      initialRoute: '/login',
      home: const LoginPage(),
      routes: {
        '/home': (context) => const MyHome(),
        '/login': (context) => const LoginPage()
      },
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFF202024), // Alterar para a cor cinza desejada
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage('assets/rocket_help_logo.png'),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Acesse sua conta',
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                prefixIcon: PhosphorIcon(
                  color: const Color(0xFF7C7C8A),
                  PhosphorIcons.regular.envelope,
                ),
                hintText: "E-mail",
                hintStyle:
                    const TextStyle(fontSize: 13, color: Color(0xFF7C7C8A)),
                filled: true,
                fillColor: const Color(0xFF121214),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  prefixIcon: PhosphorIcon(
                      color: const Color(0xFF7C7C8A),
                      PhosphorIcons.regular.key),
                  hintText: 'Senha',
                  hintStyle:
                      const TextStyle(color: Color(0xFF7C7C8A), fontSize: 13),
                  filled: true,
                  fillColor: const Color(0xFF121214),
                  enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent))),
              obscureText: true,
            ),
            const SizedBox(height: 32.0),
            SizedBox(
              width: 364.0, // Define a largura
              height: 56.0, // Define a altura
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                      context, '/home'); // Lógica de autenticação do usuário
                },
                child: const Text('Entrar'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
