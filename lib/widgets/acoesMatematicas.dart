import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AcoesMatematicas extends StatelessWidget {
  // os comentados são outra forma de realizar o trabalho => notificação tanto para mim quanto ao professor
  //final void Function(FaIcon) method;
  //final List<FaIcon> icons;

  final void Function() funcaoSomar;
  final void Function() funcaoDividir;
  final void Function() funcaoSubtrair;
  final void Function() funcaoMultiplicar;
  const AcoesMatematicas({
    super.key,
    required this.funcaoDividir,
    required this.funcaoMultiplicar,
    required this.funcaoSomar,
    required this.funcaoSubtrair,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        iconButtonWidget(
            icon: Icon(FontAwesomeIcons.plus), method: funcaoSomar),
        iconButtonWidget(
            icon: Icon(FontAwesomeIcons.minus), method: funcaoSubtrair),
        iconButtonWidget(
            icon: Icon(FontAwesomeIcons.xmark), method: funcaoMultiplicar),
        iconButtonWidget(
            icon: Icon(FontAwesomeIcons.divide), method: funcaoDividir),
      ],
    );
  }

  Widget iconButtonWidget(
      {required Icon icon, required void Function() method}) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 3, vertical: 10),
        child: Ink(
            decoration: ShapeDecoration(
                shape: CircleBorder(), color: Colors.deepPurple),
            child: IconButton(
              onPressed: method,
              icon: icon,
              color: Colors.white,
            )));
  }
}
