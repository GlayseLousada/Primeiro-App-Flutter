import 'package:flutter/material.dart';
import 'package:mobile_sales_app/menu/galeria/peca_ceramica.dart';

class DetalhePecaScreen extends StatelessWidget {
  final PecaCeramica peca;

  const DetalhePecaScreen({super.key, required this.peca});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(peca.resumo)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Hero(
              tag: peca.imagemAsset,
              child: Image.asset(
                peca.imagemAsset,
                fit: BoxFit.cover,
                height: 250,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              peca.resumo,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Text('Feito em: ${peca.data}'),
            const SizedBox(height: 8),
            Text('Inspiração: ${peca.inspiracao}'),
          ],
        ),
      ),
    );
  }
}