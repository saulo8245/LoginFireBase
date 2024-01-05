import 'package:flutter/material.dart';
import 'package:moedas/components/my_button.dart';
import 'package:moedas/components/my_textfield.dart';
import 'package:moedas/components/square_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //text editing controllers
  final usernameController = TextEditingController();
  final senhaController = TextEditingController();

  // sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 192, 202, 206),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              //Logo
              const Icon(
                Icons.lock,
                size: 100,
              ),

              const SizedBox(height: 50),

              //Bem vindo de volta, você fez falta!
              Text(
                'Bem vindo de volta, você fez falta!',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 25),

              //Username textfield
              MyTextField(
                controller: usernameController,
                hintText: 'Nome de Usuario',
                obscureText: false, // Adicione esta linha
              ),

              const SizedBox(height: 10),

              //senha textfield
              MyTextField(
                controller: senhaController,
                hintText: 'Senha',
                obscureText: true,
              ),

              //Esqueceu a senha?
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

              // Botao de login
              MyButton(onTap: signUserIn),

              const SizedBox(height: 10),

              //continuar com
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
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
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

              //google + apple butoes de login
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Botao google
                  SquareTile(imagePath: 'lib/images/iconsgoogle.png'),

                  SizedBox(width: 25),

                  //Botao Apple
                  SquareTile(imagePath: 'lib/images/iconsios.png'),
                ],
              ),

              const SizedBox(height: 20),

              // nao é membro ? registre-se agora
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
    );
  }
}
