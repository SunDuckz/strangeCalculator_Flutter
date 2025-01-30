import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AcoesMatematicas extends StatelessWidget {
  final void Function(FaIcon) method;
  final List<FaIcon> icons;
  const AcoesMatematicas(
      {super.key, required this.method, required this.icons});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        iconButtonWidget(icon: icons[0], method: () => method(icons[0])),
        iconButtonWidget(icon: icons[1], method: () => method(icons[1])),
        iconButtonWidget(icon: icons[2], method: () => method(icons[2])),
        iconButtonWidget(icon: icons[3], method: () => method(icons[3])),
      ],
    );
  }

  Widget iconButtonWidget(
      {required FaIcon icon, required void Function() method}) {
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
