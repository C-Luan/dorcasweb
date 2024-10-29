import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';

import '../../../styles/glass.dart';

class TestemunhosSections extends StatelessWidget {
  TestemunhosSections({super.key, required this.height});
  final double height;
  final scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(
          child: Text(
            'O que nossos clientes estão falando',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Scrollbar(
          controller: scrollController,
          interactive: true,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: SizedBox(
              height: height,
              width: 1800,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 300,
                    height: 350,
                    child: CardTestemunhos(
                      cliente: 'MTS SEGURANÇA LTDA',
                      pathasset: 'assets/clientes/mtsseguranca.png',
                      rating: 5,
                      testemunho:
                          'Exelente fornecedor, atende aos prazos criteriozamente! sempre prezando pela qualidade ',
                    ),
                  ),
                  SizedBox(
                    width: 300,
                    height: 350,
                    child: CardTestemunhos(
                      cliente: 'RMTS SERVIÇOS LTDA',
                      pathasset: 'assets/clientes/rmtsservicos.png',
                      rating: 4.75,
                      testemunho:
                          'Qualidade dos materias entregue, sempre de forma impecável.',
                    ),
                  ),
                  SizedBox(
                    width: 300,
                    height: 350,
                    child: CardTestemunhos(
                      cliente: 'JR ESATA',
                      pathasset: 'assets/clientes/jresata.png',
                      rating: 4.5,
                      testemunho:
                          'Clientes desde 2024, sempre nos atendendo dentro das normas de qualidade exigida para o ambiente de trabalho interno e externo',
                    ),
                  ),
                  SizedBox(
                    width: 300,
                    height: 350,
                    child: CardTestemunhos(
                      cliente: 'COMPLY SERVIÇOS',
                      pathasset: 'assets/clientes/comply.png',
                      rating: 4.5,
                      testemunho: '',
                    ),
                  ),
                  SizedBox(
                    width: 300,
                    height: 350,
                    child: CardTestemunhos(
                      cliente: 'LSG SKYCHEFS',
                      pathasset: 'assets/clientes/skychefs.png',
                      rating: 4.5,
                      testemunho: '',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CardTestemunhos extends StatelessWidget {
  const CardTestemunhos(
      {super.key,
      required this.cliente,
      required this.testemunho,
      required this.pathasset,
      required this.rating});
  final String cliente;
  final String testemunho;
  final double rating;
  final String pathasset;
  @override
  Widget build(BuildContext context) {
    return GlassMorphism(
      start: 0.9,
      end: 0.3,
      child: Card(
        shadowColor: Colors.transparent,
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                maxRadius: 58,
                minRadius: 30,
                backgroundColor: Colors.white,
                child: Image.asset(pathasset),
              ),
              StarRating(
                rating: rating,
                allowHalfRating: false,
              ),
              ListTile(
                title: Text(cliente,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold)),
                subtitle: Text(testemunho,
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
