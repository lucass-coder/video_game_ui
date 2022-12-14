import 'package:flutter/material.dart';
import 'package:video_game_ui/constant.dart';

class DetailScreen extends StatelessWidget {

  final String? caminhoImagem;
  final String? caminhoPlataformas;
  final String? nomeJogo;
  final String? description;

  const DetailScreen({Key? key, this.caminhoImagem, this.caminhoPlataformas, this.nomeJogo, this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.58,
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.55,
                          child: Center(
                            child: Image.asset(
                              'assets/images/cybersoldier.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: const Positioned(
                            left: 10,
                            top: 5,
                            child: Icon(Icons.arrow_back_ios_new_rounded,
                                color: Colors.white, size: 30),
                          ),
                        ),
                        Positioned(
                          top: MediaQuery.of(context).size.height * 0.48,
                          child: SizedBox(
                            height: 85,
                            width: MediaQuery.of(context).size.width,
                            child: Image.asset(
                              'assets/images/cyberpunkLogo.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 30),
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: const Text(
                      'Cyberpunk 2077 ?? um jogo eletr??nico de RPG de a????o desenvolvido e publicado pela CD Projekt.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 60,
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: Image.asset(
                      'assets/images/platforms.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
              Container(
                height: 70,
                decoration: const BoxDecoration(
                  color: colorRed,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: const Center(
                  child: Text(
                    'RESERVE AGORA',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
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
