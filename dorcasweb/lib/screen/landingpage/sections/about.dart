import 'package:flutter/material.dart';

class SobreSection extends StatelessWidget {
  const SobreSection({super.key, required this.height});
  final double height;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      color: Theme.of(context).dividerColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 500,
                    child: ListTile(
                      titleAlignment: ListTileTitleAlignment.center,
                      title: Text('',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Text('Endereço',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w800)),
                  Text(
                      ''),
                  Text(
                      ''),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 500,
                    child: ListTile(
                      titleAlignment: ListTileTitleAlignment.center,
                      title: Text('Sobre nós',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi id tempor tortor. Vivamus est massa, viverra.',
                      style: TextStyle(fontWeight: FontWeight.w800)),
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
