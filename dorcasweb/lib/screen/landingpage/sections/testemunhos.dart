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
        Center(
          child: Text(
            'O que nossos clientes estão falando',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
        ),
        Scrollbar(
          controller: scrollController,
          interactive: true,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: SizedBox(
              height: height,
              width: MediaQuery.of(context).size.width * .9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 300,
                    height: 250,
                    child: CardTestemunhos(
                      cliente: 'Cliente 1',
                      rating: 5,
                      testemunho:
                          'LorenEpsun LorenEpsun LorenEpsun LorenEpsun LorenEpsunLorenEpsunLorenEpsun LorenEpsunLorenEpsunLorenEpsunLorenEpsun LorenEpsun vLorenEpsunLorenEpsun',
                    ),
                  ),
                  SizedBox(
                    width: 300,
                    height: 250,
                    child: CardTestemunhos(
                      cliente: 'Cliente 2',
                      rating: 4.75,
                      testemunho:
                          'LorenEpsun LorenEpsun LorenEpsun LorenEpsun LorenEpsunLorenEpsunLorenEpsun LorenEpsunLorenEpsunLorenEpsunLorenEpsun LorenEpsun vLorenEpsunLorenEpsun',
                    ),
                  ),
                  SizedBox(
                    width: 300,
                    height: 250,
                    child: CardTestemunhos(
                      cliente: 'Cliente 3',
                      rating: 4.5,
                      testemunho:
                          'LorenEpsun LorenEpsun LorenEpsun LorenEpsun LorenEpsunLorenEpsunLorenEpsun LorenEpsunLorenEpsunLorenEpsunLorenEpsun LorenEpsun vLorenEpsunLorenEpsun',
                    ),
                  ),
                  SizedBox(
                    width: 300,
                    height: 250,
                    child: CardTestemunhos(
                      cliente: 'Cliente 1',
                      rating: 5,
                      testemunho:
                          'LorenEpsun LorenEpsun LorenEpsun LorenEpsun LorenEpsunLorenEpsunLorenEpsun LorenEpsunLorenEpsunLorenEpsunLorenEpsun LorenEpsun vLorenEpsunLorenEpsun',
                    ),
                  ),
                  SizedBox(
                    width: 300,
                    height: 250,
                    child: CardTestemunhos(
                      cliente: 'Cliente 1',
                      rating: 5,
                      testemunho:
                          'LorenEpsun LorenEpsun LorenEpsun LorenEpsun LorenEpsunLorenEpsunLorenEpsun LorenEpsunLorenEpsunLorenEpsunLorenEpsun LorenEpsun vLorenEpsunLorenEpsun',
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
      required this.rating});
  final String cliente;
  final String testemunho;
  final double rating;
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
              StarRating(
                rating: rating,
                allowHalfRating: false,
              ),
              ListTile(
                title: Text(cliente,
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                subtitle: Text(testemunho,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
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
