import 'package:flutter/material.dart';

class InicioSection extends StatelessWidget {
  const InicioSection({super.key, required this.height});
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(20),
                // color: const Color.fromARGB(255, 49, 49, 49)
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/body/background.png',
                  ),
                ),
                // shape: BoxShape.rectangle,
              ),
              height: height - 50,
              width: MediaQuery.of(context).size.width,
              child: Center(
                  child: Container(
                height: 500,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage(
                      'assets/body/prancheta.png',
                    ),
                  ),
                ),
              )),
            )
          ],
        ),
      ),
    );
  }
}
