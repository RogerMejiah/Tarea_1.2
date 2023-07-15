import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double contador = 10;

  final estilo = const TextStyle(
      fontSize: 20, fontWeight: FontWeight.w500, color: Color(0xFF1B5E20));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        title: const Center(child: Text('Operaciones Algebráicas')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xFF1B5E20),
                  width: 2.5,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'Resultado: $contador',
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1B5E20),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 200),
            Text(
              '¿Qué operación le gustaría realizar?',
              style: estilo,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(width: 30),
          Expanded(
              child: FloatingActionButton(
            backgroundColor: Colors.green[900],
            onPressed: incrementar,
            child: const Icon(Icons.add),
          )),
          Expanded(
              child: FloatingActionButton(
            backgroundColor: Colors.green[900],
            onPressed: decrementar,
            child: const Icon(CupertinoIcons.minus),
          )),
          Expanded(
              child: FloatingActionButton(
            backgroundColor: Colors.green[900],
            onPressed: producto,
            child: const Icon(CupertinoIcons.multiply),
          )),
          Expanded(
              child: FloatingActionButton(
            backgroundColor: Colors.green[900],
            onPressed: cociente,
            child: const Icon(CupertinoIcons.divide),
          )),
          Expanded(
              child: FloatingActionButton(
            backgroundColor: Colors.green[900],
            onPressed: reiniciar,
            child: const Icon(CupertinoIcons.restart),
          )),
        ],
      ),
    );
  }

  void incrementar() {
    setState(() {});

    contador = contador + 2;
  }

  void decrementar() {
    contador = contador - 2;
    setState(() {});
  }

  void producto() {
    contador = contador * 2;
    setState(() {});
  }

  void cociente() {
    contador = contador / (2);
    setState(() {});
  }

  void reiniciar() {
    contador = 10;
    setState(() {});
  }
}
