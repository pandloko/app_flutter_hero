import 'package:flutter/material.dart';

import 'telaambiente.dart';

class TelaJogoHeroi extends StatefulWidget {
  const TelaJogoHeroi({super.key});

  @override
  State<TelaJogoHeroi> createState() => TelaJogoHeroiState();
}

class TelaJogoHeroiState extends State<TelaJogoHeroi> {
  String nomeHeroi = '';
  int vida = 0;
  int moedas = 0;
  int poder = 0;
  String urlimagen = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('Escolha seu Heroi'),

            Row(
              children: [
                ElevatedButton(
                  onPressed: () => Escolherheroi("Guerreiro"),
                  child: Text("Guerreiro"),
                ),

                ElevatedButton(
                  onPressed: () => Escolherheroi("Mago"),
                  child: Text("Mago"),
                ),

                ElevatedButton(
                  onPressed: () => Escolherheroi("Arqueiro"),
                  child: Text("Arqueiro"),
                ),
              ],
            ),

            if (nomeHeroi != '') ...[
              Image.asset(
                urlimagen,
                width: 150,
                height: 150,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) {
                  return const Text(
                    'Erro ao carregar imagem',
                    style: TextStyle(color: Colors.red),
                  );
                },
              ),

              Card(
                elevation: 5,
                color: Colors.grey[200],

                child: Padding(
                  padding: const EdgeInsets.all(20.0),

                  child: Column(
                    children: [
                      Text(
                        'Classe: $nomeHeroi',

                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const Divider(),

                      Text(
                        '❤️ Vida: $vida',

                        style: const TextStyle(fontSize: 18, color: Colors.red),
                      ),

                      Text(
                        '💰 Moedas: $moedas',

                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.orange,
                        ),
                      ),

                      Text(
                        '⚔️ Poder: $poder',

                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              ElevatedButton(
                child: Text('INICIAR AVENTURA'),

                onPressed: () {
                  Navigator.push(
                    context,

                    MaterialPageRoute(
                      builder: (context) => TelaAmbiente(
                        heroi: nomeHeroi,
                        urlImagem: urlimagen,
                        moedas: moedas,
                        vida: vida,
                        poder: poder,
                      ),
                    ),
                  );
                },
              ),
            ] else ...[
              const Text(
                'Nenhum herói selecionado ainda.',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ],
        ),
      ),
    );
  }

  void Escolherheroi(String tipoHeroi) {
    setState(() {
      if (tipoHeroi == "Guerreiro") {
        nomeHeroi = "Guerreiro";
        vida = 250;
        moedas = 50;
        poder = 75;

        urlimagen = "ddd.png";
      } else if (tipoHeroi == "Mago") {
        nomeHeroi = "Mago";
        vida = 100;
        moedas = 50;
        poder = 150;

        urlimagen = "patolinomago.png";
      } else if (tipoHeroi == "Arqueiro") {
        nomeHeroi = "Arqueiro";
        vida = 150;
        moedas = 50;
        poder = 120;

        urlimagen = "arqueiro.png";
      }
    });
  }
}
