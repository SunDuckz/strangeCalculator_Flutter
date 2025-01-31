// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:primeira_aplicacao_flutter/widgets/acoesMatematicas.dart';
import 'package:primeira_aplicacao_flutter/widgets/inputWidget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:primeira_aplicacao_flutter/widgets/resultadoWidget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var textController1 = TextEditingController();
  var textController2 = TextEditingController();
  double? resultadoDaSoma;
  bool mostrarsoma = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InputWidget(title: "Valor 1", controller: textController1),
            InputWidget(title: "valor 2", controller: textController2),
            AcoesMatematicas(
              funcaoSomar: funcaoSomar,
              funcaoDividir: funcaoDividir,
              funcaoMultiplicar: funcaoMultiplicar,
              funcaoSubtrair: funcaoSubtrair,
            ),
            ResultadoWidget(
                mostrarsoma: mostrarsoma, resultadoDaSoma: resultadoDaSoma)
          ],
        ),
      ),
    );
  }

  void funcaoSomar() {
    var valor1 = double.tryParse(textController1.text) ?? 0;
    var valor2 = double.tryParse(textController2.text) ?? 0;

    resultadoDaSoma = valor1 + valor2;

    mostrarsoma = true;
    setState(() {});
  }

  void funcaoDividir() {
    var valor1 = double.tryParse(textController1.text) ?? 0;
    var valor2 = double.tryParse(textController2.text) ?? 1;

    resultadoDaSoma = valor1 / valor2;

    mostrarsoma = true;
    setState(() {});
  }

  void funcaoMultiplicar() {
    var valor1 = double.tryParse(textController1.text) ?? 0;
    var valor2 = double.tryParse(textController2.text) ?? 0;

    resultadoDaSoma = valor1 * valor2;

    mostrarsoma = true;
    setState(() {});
  }

  void funcaoSubtrair() {
    var valor1 = double.tryParse(textController1.text) ?? 0;
    var valor2 = double.tryParse(textController2.text) ?? 0;

    resultadoDaSoma = valor1 - valor2;

    mostrarsoma = true;
    setState(() {});
  }

  // // // // void calcularValores(FaIcon icon) {
  // // // //   // ?? 0 -> se retornar nulo o valor retornado sera o que está atras das interrogações
  // // // //   var valor1 = double.tryParse(textController1.text) ?? 0;
  // // // //   var valor2 = double.tryParse(textController2.text) ?? 0;

  // // // //   if (icon == FontAwesomeIcons.plus) {
  // // // //     resultadoDaSoma = valor1 + valor2;
  // // // //   }
  // // // //   if (icon == Icon(FontAwesomeIcons.divide)) {
  // // // //     if (valor2 == 0) {
  // // // //       valor2 = 1;
  // // // //     }
  // // // //     resultadoDaSoma = valor1 / valor2;
  // // // //   }
  // // // //   if (icon == Icon(FontAwesomeIcons.xmark)) {
  // // // //     resultadoDaSoma = valor1 * valor2;
  // // // //   }
  // // // //   if (icon == Icon(FontAwesomeIcons.minus)) {
  // // // //     resultadoDaSoma = valor1 - valor2;
  // // // //   }

  // // // //   mostrarsoma = true;
  // // // //   setState(() {});
  // // // // }

  Widget botaoWidget({required Text text, required void Function() method}) {
    return TextButton(onPressed: method, child: text);
  }
}
