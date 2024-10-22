import 'package:flutter/material.dart';

class SobreSection extends StatelessWidget {
  const SobreSection({super.key, required this.height});
  final double height;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: MediaQuery.of(context).size.width,
      color: Theme.of(context).dividerColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Endereço:\n',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w800)),
                  Text('Rua Lauro Pompeu Nº357, Icui Laranjeira'),
                  Text('CEP: 67125-117\n'),
                  Text('Contatos:\n',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w800)),
                  TextButton(
                      onPressed: () {},
                      child: Text('Dilma Cruz: (91) 99906-7493')),
                  TextButton(
                      onPressed: () {},
                      child: Text('Erevaldo Cruz: (91) 98451-9284')),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Sobre Nós:\n',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w800)),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .6,
                    child: Text(
                        'Mais do que uma empresa de ateliê e costura. Somos uma equipe dedicada à fabricação de uniformes para setores vitais. Na Dorcas, cada ponto, cada corte e cada detalhe são cuidadosamente pensados e executados para garantir durabilidade e funcionalidade. Nosso compromisso com a qualidade se reflete não apenas nos produtos dinais, mas em cada parte do processo de fabricação',
                        overflow: TextOverflow.fade,
                        style: TextStyle(fontWeight: FontWeight.w300)),
                  ),
                ],
              ),
            ],
          ),
          Text('Desenvolvido por Adatech desenvolvimento de sistemas')
        ],
      ),
    );
  }
}
