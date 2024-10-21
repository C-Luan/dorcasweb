import 'package:flutter/material.dart';

class MenuBarHome extends StatelessWidget {
  final ValueChanged<int> onMenuClick;
  const MenuBarHome({super.key, required this.onMenuClick});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 28, right: 28),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Image(
              height: 100,
              image: AssetImage(
                'assets/logo/logo-sem-fundo.png',
              )),
          Row(
            children: [
              TextButton(
                onPressed: () => onMenuClick(1),
                child: const Text(
                  'Início',
                ),
              ),
              TextButton(
                onPressed: () => onMenuClick(2),
                child: const Text(
                  'Valores',
                ),
              ),
              TextButton(
                onPressed: () => onMenuClick(3),
                child: const Text(
                  'Serviços',
                ),
              ),
              TextButton(
                onPressed: () => onMenuClick(4),
                child: const Text(
                  'Feedback',
                ),
              ),
              TextButton(
                onPressed: () => onMenuClick(5),
                child: const Text(
                  'about',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
