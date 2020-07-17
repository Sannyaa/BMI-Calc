import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPressedFunction;

  RoundIconButton({@required this.icon, @required this.onPressedFunction});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressedFunction,
      child: Icon(icon),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
    );
  }
}
