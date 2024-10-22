import 'package:dorcasweb/styles/glass.dart';
import 'package:flutter/material.dart';

class ServicosPrestados extends StatelessWidget {
  ServicosPrestados({super.key, required this.height});
  final double height;
  final scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            'Nossos Serviços',
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
              width: 2000,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 375,
                    height: 350,
                    child: InkWell(
                      // borderRadius: BorderRadius.circular(24),
                      onTap: () {},
                      child: SizedBox(
                        width: 300,
                        height: 400,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(23),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  'assets/servicos/administrativo.png'),
                            ),
                          ),
                          child: _cardServico(
                            title: 'Administração',
                            subtitle: '',
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 375,
                    height: 350,
                    child: InkWell(
                      // borderRadius: BorderRadius.circular(24),
                      onTap: () {},
                      child: SizedBox(
                        width: 300,
                        height: 400,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(23),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image:
                                  AssetImage('assets/servicos/vigilantes.png'),
                            ),
                          ),
                          child: _cardServico(
                            title: 'Vigilantes',
                            subtitle: '',
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 375,
                    height: 350,
                    child: InkWell(
                      // borderRadius: BorderRadius.circular(24),
                      onTap: () {},
                      child: SizedBox(
                        width: 300,
                        height: 400,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(23),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  'assets/servicos/agenteportaria.png'),
                            ),
                          ),
                          child: _cardServico(
                            title: 'Agente de Portaria',
                            subtitle: '',
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 375,
                    height: 350,
                    child: InkWell(
                      // borderRadius: BorderRadius.circular(24),
                      onTap: () {},
                      child: SizedBox(
                        width: 300,
                        height: 400,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(23),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  'assets/servicos/servicosgeraiserecepcao.png'),
                            ),
                          ),
                          child: _cardServico(
                            title: 'Serviços Gerais e Recepção',
                            subtitle: '',
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 375,
                    height: 350,
                    child: InkWell(
                      // borderRadius: BorderRadius.circular(24),
                      onTap: () {},
                      child: SizedBox(
                        width: 300,
                        height: 400,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(23),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  'assets/servicos/macacaocomum.png'),
                            ),
                          ),
                          child: _cardServico(
                            title: 'Macacão Comum',
                            subtitle: '',
                          ),
                        ),
                      ),
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

  Widget _cardServico({required String title, required String subtitle}) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        GlassMorphism(
          start: 0.6,
          end: 0.6,
          child: Card(
            color: Colors.transparent,
            shadowColor: Colors.transparent,
            child: ListTile(
              title: Text(title),
              subtitle: Text(subtitle),
            ),
          ),
        )
      ],
    );
  }
}
