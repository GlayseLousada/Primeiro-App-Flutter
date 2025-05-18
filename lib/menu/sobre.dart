import 'package:flutter/material.dart';

class SobreScreen extends StatelessWidget {
  const SobreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sobre'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'História da Argila Criativa',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFA0522D), // Marrom argila
                ),
              ),
              SizedBox(height: 16),
              Text(
                'No coração do Bairro Boêmio, em Goiânia-GO, nasce a paixão pela cerâmica artística em cada peça moldada pelas mãos do Sr. Carlos Pereira. Proprietário da oficina “Argila Criativa”, localizada na Rua dos Artistas, nº 567, ele carrega consigo uma herança preciosa: a arte de transformar argila em sonhos.\n\n'
                'A trajetória do Sr. Carlos é marcada por tradição e afeto. Ele aprendeu os primeiros segredos da cerâmica com sua mãe, que, por sua vez, herdou esse conhecimento da avó de Carlos. São gerações de criatividade, dedicação e amor pela arte, transmitidos de mãe para filho, de avó para neta, perpetuando uma linhagem de mestres artesãos.\n\n'
                'Na “Argila Criativa”, cada peça conta uma história única. O Sr. Carlos acredita que a argila, quando moldada com carinho, é capaz de eternizar sentimentos e memórias. Sua oficina é um espaço de inspiração, onde a tradição familiar se une à inovação, levando beleza e autenticidade para a vida das pessoas.\n\n'
                'Venha conhecer a Argila Criativa e descubra como a arte pode transformar o cotidiano em poesia!',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF8C7B6B), // Verde musgo suave
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}