import 'package:flutter/widgets.dart';

class EquiposModel {
  String titulo;
  IconData icono;
  String fabricante;
  String modelo;
  String mac;
  String estado;

  EquiposModel({
    required this.titulo,
    required this.icono,
    required this.fabricante,
    required this.modelo,
    required this.mac,
    required this.estado,
  });
}
