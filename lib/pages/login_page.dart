import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:moedas/components/my_button.dart';
import 'package:moedas/components/my_textfield.dart';
import 'package:moedas/components/square_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key});

  final emailController = TextEditingController();
  final senhaController = TextEditingController();

  void signUserIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.text,
      password: senhaController.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 192, 202, 206),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight,
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 50),
                        const Icon(
                          Icons.lock,
                          size: 100,
                        ),
                        const SizedBox(height: 50),
                        Text(
                          'Bem vindo de volta, você fez falta!',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 25),
                        MyTextField(
                          controller: emailController,
                          hintText: 'Digite seu email',
                          obscureText: false,
                        ),
                        const SizedBox(height: 10),
                        MyTextField(
                          controller: senhaController,
                          hintText: 'Senha',
                          obscureText: true,
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'Esqueceu a senha ?',
                                style: TextStyle(color: Colors.grey[600]),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        MyButton(onTap: signUserIn),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Divider(
                                  thickness: 0.5,
                                  color: Colors.grey[400],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                child: Text(
                                  'Continuar com',
                                  style: TextStyle(color: Colors.grey[700]),
                                ),
                              ),
                              Expanded(
                                child: Divider(
                                  thickness: 0.5,
                                  color: Colors.grey[400],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SquareTile(imagePath: 'lib/images/iconsgoogle.png'),
                            SizedBox(width: 25),
                            SquareTile(imagePath: 'lib/images/iconsios.png'),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Nao é membro?',
                              style: TextStyle(color: Colors.grey[700]),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              'Registre-se agora',
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
