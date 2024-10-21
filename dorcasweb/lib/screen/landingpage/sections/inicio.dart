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
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 49, 49, 49)
                // image: DecorationImage(
                //   fit: BoxFit.fill,
                //   image: AssetImage(
                //     'assets/images/header_solar.png',
                //   ),
                // ),
                // shape: BoxShape.rectangle,
              ),
              height: 600,
              width: MediaQuery.of(context).size.width * .9,
              child: Center(
                child: ListTile(
                  title: Text(
                    'Dorcas',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.w700),
                  ),
                  subtitle: Text(
                    '',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
