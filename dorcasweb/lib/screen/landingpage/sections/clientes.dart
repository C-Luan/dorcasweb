import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';

import '../../../styles/glass.dart';

class ClientesSections extends StatelessWidget {
  ClientesSections({super.key, required this.height});
  final double height;
  final scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            // borderRadius: BorderRadius.circular(20),
            // color: const Color.fromARGB(255, 49, 49, 49)
            image: DecorationImage(
              fit: BoxFit.cover,
              filterQuality: FilterQuality.low,
              image: AssetImage(
                'assets/body/background.png',
              ),
            ),
            // shape: BoxShape.rectangle,
          ),
          height: height,
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24), color: Colors.white),
              // color: Colors.white,
              child: SizedBox(
                width: 1200,
                height: 600,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: const Center(
                        child: Text(
                          'Nossos Clientes',
                          style: TextStyle(
                              fontSize: 36, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Center(
                      child: SizedBox(
                        height: 400,
                        width: 800,
                        child: GridView.count(
                            crossAxisCount:
                                MediaQuery.of(context).size.width < 1000
                                    ? 3
                                    : 6, // Number of columns
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  'assets/clientes/mtsseguranca.png',
                                  filterQuality: FilterQuality.low,
                                  width: 35,
                                  height: 35,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  'assets/clientes/rmtsservicos.png',
                                  width: 85,
                                  height: 84,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  'assets/clientes/jresata.png',
                                  width: 85,
                                  height: 84,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  'assets/clientes/comply.png',
                                  width: 85,
                                  height: 84,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  'assets/clientes/skychefs.png',
                                  width: 85,
                                  height: 84,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  'assets/clientes/viena.png',
                                  width: 85,
                                  height: 84,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  'assets/clientes/adatech.png',
                                  width: 85,
                                  height: 84,
                                ),
                              ),
                            ]),
                      ),
                    )
                  ],
                ),
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
