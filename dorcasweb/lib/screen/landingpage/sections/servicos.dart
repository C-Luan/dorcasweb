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
              width: 1200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 300,
                    height: 250,
                    child: Card(
                      child: _cardServico(
                        title: 'LorenEpsun',
                        subtitle: 'Loren Epsun',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 300,
                    height: 250,
                    child: Card(
                      child: _cardServico(
                        title: 'LorenEpsun',
                        subtitle: 'Loren Epsun',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 300,
                    height: 250,
                    child: Card(
                      child: _cardServico(
                        title: 'LorenEpsun',
                        subtitle: 'Loren Epsun',
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
        Card(
          color: Colors.grey,
          child: SizedBox(
            width: 230,
            child: ListTile(),
          ),
        ),
        Card(
          color: Colors.white,
          child: ListTile(
            title: Text(title),
            subtitle: Text(subtitle),
          ),
        )
      ],
    );
  }
}
