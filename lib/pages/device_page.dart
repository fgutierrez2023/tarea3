import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DevicePage extends StatelessWidget {
  String fabricante;
  String modelo;
  String mac;
  String estado;
  DevicePage(
      {required this.fabricante,
      required this.modelo,
      required this.mac,
      required this.estado});

  @override
  Widget build(BuildContext context) {
    if (estado == 'Apagado') {
      estado = 'Encender';
    }
    if (estado == 'Encendido') {
      estado = 'Apagar';
    }
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Navicury"),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(0, 0, 78, 78),
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Fabricante: ",
                    style: TextStyle(fontSize: 22),
                  ),
                  Text(
                    fabricante,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Modelo: ",
                    style: TextStyle(fontSize: 22),
                  ),
                  Text(
                    modelo,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "MAC: ",
                    style: TextStyle(fontSize: 22),
                  ),
                  Text(
                    mac,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 380,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(estado,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Color.fromRGBO(0, 0, 78, 78),
                        fontSize: 23,
                        //height: 2.5,
                      )),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    elevation: 5,
                    shadowColor: Colors.transparent.withOpacity(0.1),
                    side: BorderSide(
                      width: 2,
                      color: Color.fromRGBO(0, 0, 78, 78),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
