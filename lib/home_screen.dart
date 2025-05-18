
import 'package:flutter/material.dart';
import 'package:mobile_sales_app/menu/galeria/galeria.dart';
import 'package:mobile_sales_app/menu/sobre.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Argila Criativa'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFFA0522D),
              ),
              child: const Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.photo),
              title: const Text('Galeria'),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const GaleriaScreen()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('Sobre'),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const SobreScreen()),
                );
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Imagem de destaque
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/images/imagem_princial.jpg', // Corrija o nome do arquivo se necessário
                  height: 180,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 20),
              // Título estilizado
              Text(
                'Bem-vindo à Argila Criativa!',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFFA0522D),
                      shadows: [
                        Shadow(
                          blurRadius: 4,
                          color: Colors.brown.withOpacity(0.3),
                          offset: const Offset(2, 2),
                        ),
                      ],
                    ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              // Frase inspiradora
              const Text(
                '"Transformando argila em arte e tradição!"',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Color(0xFFD2691E),
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              // Botão de ação
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFE2725B),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  textStyle: const TextStyle(fontSize: 14),
                  minimumSize: const Size(0, 40),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const GaleriaScreen()),
                  );
                },
                icon: const Icon(Icons.photo_library),
                label: const Text('Ver Galeria'),
              ),
              const SizedBox(height: 24),
              // Sugestão 7: Próximo evento/feira
              Card(
                color: const Color(0xFFF5DEB3),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                elevation: 3,
                margin: const EdgeInsets.symmetric(vertical: 4),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.event, color: Color(0xFFA0522D), size: 36),
                          SizedBox(width: 12),
                          Expanded(
                            child: Text(
                              'Próxima Feira de Artesanato',
                              style: TextStyle(
                                color: Color(0xFFA0522D),
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 6),
                      const Text(
                        '25 de maio, 18h\nPraça Central',
                        style: TextStyle(
                          color: Color(0xFF8C7B6B),
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Align(
                        alignment: Alignment.centerRight,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFE2725B),
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                            textStyle: const TextStyle(fontSize: 14), // <-- ajuste aqui
                            minimumSize: const Size(0, 40),
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                              content: Text('Em breve mais informações sobre a feira!'),
                              backgroundColor: Color(0xFFA0522D),
                            ));
                          },
                          child: const Text('Saiba mais'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 18),
              // Cards de destaque
              Text(
                'Destaques',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: const Color(0xFFA0522D),
                    ),
              ),
              const SizedBox(height: 12),
              SizedBox(
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _destaqueCard('Peças Únicas', 'assets/images/peca_unica.jpg'),
                    _destaqueCard('Workshop', 'assets/images/workshop.jpg'),
                    _destaqueCard('Depoimento', 'assets/images/depoimento.jpg'),
                  ],
                ),
              ),
              const SizedBox(height: 28),
              // Sugestão 10: Widget de Feedback/Rede Social
              Card(
                color: const Color(0xFFF5DEB3),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                elevation: 2,
                margin: const EdgeInsets.only(bottom: 16),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        'Gostou do app? Dê sua opinião ou compartilhe!',
                        style: TextStyle(
                          color: Color(0xFFA0522D),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 12),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFE2725B),
                                foregroundColor: Colors.white,
                                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                                textStyle: const TextStyle(fontSize: 14),
                                minimumSize: const Size(0, 40),
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              ),
                              onPressed: () {
                                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                                  content: Text('Obrigado pelo feedback!'),
                                  backgroundColor: Color(0xFFA0522D),
                                ));
                              },
                              icon: const Icon(Icons.feedback),
                              label: const Text('Enviar Feedback'),
                            ),
                            const SizedBox(width: 12),
                            ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFE2725B),
                                foregroundColor: Colors.white,
                                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                                textStyle: const TextStyle(fontSize: 14),
                                minimumSize: const Size(0, 40),
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              ),
                              onPressed: () {
                                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                                  content: Text('Compartilhe com seus amigos!'),
                                  backgroundColor: Color(0xFFA0522D),
                                ));
                              },
                              icon: const Icon(Icons.share),
                              label: const Text('Compartilhar'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _destaqueCard(String titulo, String imagem) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: SizedBox(
        width: 140,
        child: Card(
          color: const Color(0xFFF5DEB3),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: Column(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
                  child: Image.asset(
                    imagem,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  titulo,
                  style: const TextStyle(
                    color: Color(0xFFA0522D),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}