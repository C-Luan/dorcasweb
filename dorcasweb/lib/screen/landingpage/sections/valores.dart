import 'package:flutter/material.dart';

import '../../../styles/glass.dart';

class ValoresSection extends StatelessWidget {
  const ValoresSection({super.key, required this.height});
  final double height;

  @override
  Widget build(BuildContext context) {
    return GlassMorphism(
      start: 0.6,
      end: 0.6,
      child: Card(
        elevation: 10,
        color: Colors.transparent,
        shadowColor: Colors.transparent,
        child: SizedBox(
          width: 1000,
          height: height,
          child: Row(
            children: [
              Flexible(
                child: ListTile(
                  tileColor: Colors.transparent,
                  title: Text('Missão'),
                  subtitle: Text(
                      'Loren epsum Loren epsum Loren epsum Loren epsumLoren epsum Loren epsum'),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 12, bottom: 12),
                child: VerticalDivider(),
              ),
              Flexible(
                child: ListTile(
                  tileColor: Colors.transparent,
                  title: Text('Visão'),
                  subtitle: Text(
                      'Loren epsum Loren epsum Loren epsum Loren epsumLoren epsum Loren epsum'),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 12, bottom: 12),
                child: VerticalDivider(),
              ),
              Flexible(
                child: ListTile(
                  tileColor: Colors.transparent,
                  title: Text('Valores'),
                  subtitle: Text(
                      'Loren epsum Loren epsum Loren epsum Loren epsumLoren epsum Loren epsum'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
