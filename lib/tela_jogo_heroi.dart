import 'package:flutter/material.dart';

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
  String urlimagen = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: 
    Center(
      child: Column(
        children: [
           Text('Escolha seu Heroi'),
           Row(children: [
            ElevatedButton(onPressed:() => Escolherheroi ("Guerreiro"),
            child: Text("Guerreiro")),
             ElevatedButton(onPressed:() => Escolherheroi ("Mago"),
            child: Text("Mago")),
             ElevatedButton(onPressed:() => Escolherheroi ("Arqueiro"),
            child: Text("Arqueiro"))
           ],),
           Card(
                elevation: 5, // Dá uma sombra 3D ao cartão
                color: Colors.grey[200],
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text('Classe: $nomeHeroi', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      const Divider(), // Linha divisória
                      Text('❤️ Vida: $vida', style: const TextStyle(fontSize: 18, color: Colors.red)),
                      Text('💰 Moedas: $moedas', style: const TextStyle(fontSize: 18, color: Colors.orange)),
                      Text('⚔️ Poder: $poder', style: const TextStyle(fontSize: 18, color: Colors.blue)),
                    ],
                  ),
                ),
              )
        ]
      )
    )
    );
  }
  void Escolherheroi (String tipoHeroi){
    setState(() {
      if (tipoHeroi == "Guerreiro") {
      nomeHeroi = "Guerreiro";
      vida = 250;
      moedas = 50;
      poder = 75;
      urlimagen = "https://ironstudios.com.br/products/malenia-blade-of-miquella-elden-ring-shfiguarts-bandai?srsltid=AfmBOooV6xkOjXDNtlreuX-sevhvosLpkm9C73d9pDkxXOR6tRLKlFh4";
      }  else if (tipoHeroi == "Mago") {
      nomeHeroi = "mago";
      vida = 100;
      moedas = 50;
      poder = 150;
      urlimagen = "https://fsnp.fandom.com/pt-br/wiki/Mago_Patolino";
      } else if (tipoHeroi == "Arqueiro") {
      nomeHeroi = "Arqueiro";
      vida = 150;
      moedas = 50;
      poder = 120;
      urlimagen = "https://www.google.com/imgres?q=arqueiro&imgurl=https%3A%2F%2Fstatic.wikia.nocookie.net%2Fliberproeliis%2Fimages%2Fc%2Fc3%2FArrow_Season_1.png%2Frevision%2Flatest%3Fcb%3D20200601212242%26path-prefix%3Dpt-br&imgrefurl=https%3A%2F%2Fliberproeliis.fandom.com%2Fpt-br%2Fwiki%2FArqueiro_Verde_(CW)&docid=QmOnBgOMe42cZM&tbnid=XT7Uygh6MqOyLM&vet=12ahUKEwj834jl-NSWAxVsmJUCHZAKLxkQnPAOegQINxAA..i&w=324&h=520&hcb=2&ved=2ahUKEwj834jl-NSWAxVsmJUCHZAKLxkQnPAOegQINxAA";
      }
    });
  }
}
