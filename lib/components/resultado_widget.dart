import 'package:flutter/material.dart';

class ResultadoWidget extends StatelessWidget implements PreferredSizeWidget {
  final bool? venceu;
  final Function onReiniciar;

  const ResultadoWidget({
    super.key,
    this.venceu,
    required this.onReiniciar,
  });

  _getColor() {
    if (venceu == null) {
      return Colors.yellow;
    } else if (venceu!) {
      return Colors.green[300];
    } else {
      return Colors.red[300];
    }
  }

  _getIcon() {
    if (venceu == null) {
      return const Icon(Icons.sentiment_satisfied);
    } else if (venceu!) {
      return const Icon(Icons.sentiment_very_satisfied);
    } else {
      return const Icon(Icons.sentiment_very_dissatisfied);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: CircleAvatar(
            backgroundColor: _getColor(),
            child: IconButton(
              icon:  _getIcon(),
              onPressed: onReiniciar as void Function()?,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(120);
}
