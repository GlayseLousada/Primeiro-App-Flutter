import 'package:flutter/material.dart';
import 'package:mobile_sales_app/menu/galeria/detalhes/detalhe_peca_screen.dart';
import 'package:mobile_sales_app/menu/galeria/galeria_data.dart';

class GaleriaScreen extends StatelessWidget {
  const GaleriaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Galeria de Trabalhos'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 2 colunas
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          childAspectRatio: 0.70,
        ),
        itemCount: pecasCeramica.length,
        itemBuilder: (context, index) {
          final peca = pecasCeramica[index];
          return InkWell(
            borderRadius: BorderRadius.circular(16),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetalhePecaScreen(peca: peca),
                ),
              );
            },
            child: Card(
              color: const Color(0xFFF5DEB3),
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 6,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
                      child: Image.asset(
                        peca.imagemAsset,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          peca.resumo,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFA0522D),
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 6),
                        Text(
                          'Feito em: ${peca.data}',
                          style: const TextStyle(fontSize: 12, color: Color(0xFF8C7B6B)),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Inspiração: ${peca.inspiracao}',
                          style: const TextStyle(fontSize: 12, color: Color(0xFFD2691E)),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}