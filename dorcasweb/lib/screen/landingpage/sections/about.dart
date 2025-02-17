import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
                  TextButton(
                    onPressed: () async {
                      final Uri emailUri = Uri(
                        scheme: 'mailto',
                        path: 'comercial@dorcasservicos.com.br', // Destinatário
                        query: Uri.encodeQueryComponent(
                            'subject=Contato&body=Olá! tenho enteresse em solicitar uma cotação'),
                      );
                      await _launchUrl(emailUri);
                    },
                    child: Text('Email: comercial@dorcasservicos.com.br\n'),
                  ),
                  Text('Contatos:\n',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w800)),
                  TextButton(
                      onPressed: () async {
                        await _launchUrl(Uri.parse(
                            'https://wa.me/5591999067493?text=${Uri.parse('Olá! tenho enteresse em solicitar uma cotação')}'));
                      },
                      child: Text('Dilma Cruz: (91) 99906-7493')),
                  TextButton(
                      onPressed: () async {
                        await _launchUrl(Uri.parse(
                            'https://wa.me/5591984519284?text=${Uri.parse('Olá! tenho enteresse em solicitar uma cotação')}'));
                      },
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

  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
