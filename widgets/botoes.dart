import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Function() incrementar;
  final Function() decrementar;

  final bool isEmpty;
  final bool isFull;

  const Button(
      {Key? key,
      required this.incrementar,
      required this.decrementar,
      required this.isEmpty,
      required this.isFull})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: isEmpty ? null : decrementar,
          style: TextButton.styleFrom(
            backgroundColor:
                isEmpty ? Colors.white.withOpacity(0.2) : Colors.white,
            fixedSize: Size(100, 100),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            primary: Colors.black,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              "Saiu",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
        ),
        SizedBox(
          width: 50,
        ),
        TextButton(
          onPressed: isFull ? null : incrementar,
          style: TextButton.styleFrom(
              backgroundColor:
                  isFull ? Colors.white.withOpacity(0.2) : Colors.white,
              fixedSize: Size(100, 100),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              primary: Colors.black),
          child: Text(
            "Entrou",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
        ),
      ],
    );
  }
}
