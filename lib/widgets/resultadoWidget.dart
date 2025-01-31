import 'package:flutter/material.dart';

class ResultadoWidget extends StatelessWidget {
  final bool mostrarsoma;
  final double? resultadoDaSoma;

  const ResultadoWidget(
      {super.key, required this.mostrarsoma, required this.resultadoDaSoma});

  // tentar animar se possivel

  @override
  Widget build(BuildContext context) {
    return Visibility(
        visible: mostrarsoma,
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 2, horizontal: 100),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              gradient: LinearGradient(colors: [
                const Color.fromARGB(255, 255, 143, 0),
                const Color.fromRGBO(255, 179, 0, 1),
                const Color.fromRGBO(255, 202, 40, 1),
                const Color.fromRGBO(255, 224, 130, 1)
              ])),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Resultado: ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                "$resultadoDaSoma",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.deepPurpleAccent),
              )
            ],
          ),
        ));
  }
}
