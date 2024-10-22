import 'package:flutter/material.dart';

class MenuBarHome extends StatelessWidget {
  final ValueChanged<int> onMenuClick;
  MenuBarHome({super.key, required this.onMenuClick});
  final TextStyle _style = TextStyle(color: Colors.white);
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
                'assets/body/prancheta.png',
              )),
          Row(
            children: [
              TextButton(
                onPressed: () => onMenuClick(1),
                child: Text(
                  'Início',
                  style: _style,
                ),
              ),
              TextButton(
                onPressed: () => onMenuClick(2),
                child: Text(
                  'Valores',
                  style: _style,
                ),
              ),
              TextButton(
                onPressed: () => onMenuClick(3),
                child: Text(
                  'Serviços',
                  style: _style,
                ),
              ),
              TextButton(
                onPressed: () => onMenuClick(4),
                child: Text(
                  'Feedback',
                  style: _style,
                ),
              ),
              TextButton(
                onPressed: () => onMenuClick(5),
                child: Text(
                  'about',
                  style: _style,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
