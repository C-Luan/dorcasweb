import 'package:flutter/material.dart';

import '../../../styles/glass.dart';

class ValoresSection extends StatelessWidget {
  const ValoresSection({super.key, required this.height});
  final double height;

  @override
  Widget build(BuildContext context) {
    return GlassMorphism(
      start: 0.4,
      end: 0.4,
      child: Card(
        elevation: 10,
        color: Colors.transparent,
        shadowColor: Colors.transparent,
        child: SizedBox(
          width: 1400,
          height: height,
          child: const Row(
            children: [
              Flexible(
                child: ListTile(
                  tileColor: Colors.transparent,
                  title: Text(
                    'Missão\n',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  subtitle: Text(
                    'Transformar ideias em peças únicas, com excelência e precisão para empresas.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 12, bottom: 12),
                child: VerticalDivider(),
              ),
              Flexible(
                child: ListTile(
                  tileColor: Colors.transparent,
                  title: Text(
                    'Visão\n',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  subtitle: Text(
                    'Ser referência em soluções de corte e costura sob medida para o mercado corporativo.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 12, bottom: 12),
                child: VerticalDivider(),
              ),
              Flexible(
                child: ListTile(
                  tileColor: Colors.transparent,
                  title: Text('Valores\n',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      )),
                  subtitle: Text(
                    'Qualidade, inovação, compromisso e atendimento personalizado.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
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
