import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DetallePage extends StatefulWidget {
  String titulo;
  double luz1;
  double luz2;
  DetallePage({
    required this.titulo,
    required this.luz1,
    required this.luz2,
  });

  @override
  State<DetallePage> createState() => _DetallePageState();
}

class _DetallePageState extends State<DetallePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Navicury"),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(0, 0, 78, 78),
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(25, 30, 25, 0),
              child: SizedBox(
                width: 360,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ajustar',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Luz',
                      style: TextStyle(fontSize: 22),
                    ),
                  ],
                ),
              ),
            ),
            Slider(
              value: widget.luz1,
              min: 0,
              max: 100,
              label: widget.luz1.toStringAsFixed(1),
              activeColor: Color.fromRGBO(0, 0, 78, 78),
              inactiveColor: Colors.grey,
              thumbColor: Color.fromRGBO(0, 0, 78, 78),
              onChanged: (valor) {
                widget.luz1 = valor;
                setState(() {});
              },
            ),
            SizedBox(
              width: 340,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "0",
                    style: TextStyle(
                        fontSize: 18, color: Color.fromRGBO(0, 0, 78, 78)),
                  ),
                  Text(
                    widget.luz1.toStringAsFixed(0),
                    style: TextStyle(
                        fontSize: 18, color: Color.fromRGBO(0, 0, 78, 78)),
                  ),
                  Text(
                    "100",
                    style: TextStyle(
                        fontSize: 18, color: Color.fromRGBO(0, 0, 78, 78)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(25, 30, 25, 0),
              child: SizedBox(
                width: 360,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Luz',
                      style: TextStyle(fontSize: 22),
                    ),
                  ],
                ),
              ),
            ),
            Slider(
              value: widget.luz2,
              min: 0,
              max: 100,
              label: widget.luz2.toStringAsFixed(1),
              activeColor: Color.fromRGBO(0, 0, 78, 78),
              inactiveColor: Colors.grey,
              thumbColor: Color.fromRGBO(0, 0, 78, 78),
              onChanged: (valor) {
                widget.luz2 = valor;
                setState(() {});
              },
            ),
            SizedBox(
              width: 340,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "0",
                    style: TextStyle(
                        fontSize: 18, color: Color.fromRGBO(0, 0, 78, 78)),
                  ),
                  Text(
                    widget.luz2.toStringAsFixed(0),
                    style: TextStyle(
                        fontSize: 18, color: Color.fromRGBO(0, 0, 78, 78)),
                  ),
                  Text(
                    "100",
                    style: TextStyle(
                        fontSize: 18, color: Color.fromRGBO(0, 0, 78, 78)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
