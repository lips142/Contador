// ignore: unused_import
import 'package:contador/widgets/botoes.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int count = 0;

  void incrementar() {
    setState(() {
      count++;
    });

    print(count);
  }

  void decrementar() {
    setState(() {
      count--;
    });

    print(count);
  }

  bool get isFull => count == 20;
  bool get isEmpty => count == 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/imagens/download.jpg'),
                fit: BoxFit.cover),
          ),
          child: Column(
            // ignore: sort_child_properties_last
            children: [
              Text(
                isFull ? "Está Lotado" : "Pode Entrar!",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 65,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                count.toString(),
                style: TextStyle(
                  color: isFull ? Colors.red : Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 100,
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Button(
                incrementar: incrementar,
                decrementar: decrementar,
                isEmpty: isEmpty,
                isFull: isFull,
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ));
  }
}
