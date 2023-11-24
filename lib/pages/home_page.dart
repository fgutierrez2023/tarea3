import 'package:ejemplo19/models/equipos_model.dart';
import 'package:ejemplo19/models/espacios_model.dart';
import 'package:ejemplo19/pages/detalle_page.dart';
import 'package:ejemplo19/pages/device_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  EspaciosModel espacioModelo1 =
      EspaciosModel(title: 'A', image: 'A', luz1: 20, luz2: 30);
  EspaciosModel espacioModelo2 =
      EspaciosModel(title: 'B', image: 'B', luz1: 30, luz2: 40);
  EspaciosModel espacioModelo3 =
      EspaciosModel(title: 'C', image: 'C', luz1: 40, luz2: 50);
  EspaciosModel espacioModelo4 =
      EspaciosModel(title: 'D', image: 'D', luz1: 50, luz2: 60);
  List<EspaciosModel> recipes = [];

  EquiposModel equipoModelo1 = EquiposModel(
      titulo: 'TV cuarto',
      icono: Icons.tv,
      fabricante: 'LG',
      modelo: '2023',
      mac: '123-000467-89',
      estado: 'Apagado');

  EquiposModel equipoModelo2 = EquiposModel(
      titulo: 'Refrigeradora',
      icono: Icons.kitchen,
      fabricante: 'Samsung',
      modelo: '2000',
      mac: '34-989898989-78',
      estado: 'Encendido');

  EquiposModel equipoModelo3 = EquiposModel(
      titulo: 'Puerta Sala',
      icono: Icons.door_front_door,
      fabricante: 'LKJ',
      modelo: 'ASE-R',
      mac: '34-5265451-74',
      estado: 'Encendido');

  EquiposModel equipoModelo4 = EquiposModel(
      titulo: 'Cochera',
      icono: Icons.car_rental,
      fabricante: 'Fabrica Corrediza',
      modelo: 'KML',
      mac: '34-989898989-78',
      estado: 'Apagado');
  List<EquiposModel> equipos = [];

  @override
  void initState() {
    super.initState();
    recipes = [espacioModelo1, espacioModelo2, espacioModelo3, espacioModelo4];
    equipos = [equipoModelo1, equipoModelo2, equipoModelo3, equipoModelo4];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Navicury',
          ),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(0, 0, 78, 78),
        ),
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      'Espacios',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 140,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: recipes.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => DetallePage(
                                      titulo: recipes[index].title,
                                      luz1: recipes[index].luz1,
                                      luz2: recipes[index].luz2))));
                        },
                        child: Card(
                          child: Container(
                            width: 140,
                            height: 130,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 0,
                                  blurRadius: 5,
                                  offset: Offset(0, 8),
                                ),
                              ],
                            ),
                            child: Center(
                              child: Text(
                                recipes[index].title,
                                style: TextStyle(
                                    fontSize: 60,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(0, 0, 78, 78)),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Row(
                  children: [
                    Text(
                      'Equipos Conectados',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
                SizedBox(
                  height: 35,
                ),
                SizedBox(
                  height: 350,
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    children: equipos
                        .map<Widget>(
                          (item) => GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) => DevicePage(
                                            fabricante: item.fabricante,
                                            modelo: item.modelo,
                                            mac: item.mac,
                                            estado: item.estado,
                                          ))));
                            },
                            child: Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 0,
                                    blurRadius: 5,
                                    offset: Offset(0, 8),
                                  ),
                                ],
                              ),
                              //color: Colors.white,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      item.icono,
                                      size: 75,
                                      color: Color.fromRGBO(0, 0, 78, 78),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      item.titulo,
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color.fromRGBO(0, 0, 78, 78)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
