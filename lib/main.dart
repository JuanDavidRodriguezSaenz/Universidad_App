import 'package:flutter/material.dart';

void main() {
  runApp(MiEscuelaParticularApp());
} // funcion principal

class MiEscuelaParticularApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'App para Prepa Particular',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: PaginaInicial());
  } // widget
} // clase prepa particular app widget sin estado

class PaginaInicial extends StatefulWidget {
  PaginaInicial({Key? key}) : super(key: key);
  @override
  _PaginaInicialState createState() => _PaginaInicialState();
} // widget con estado

class _PaginaInicialState extends State<PaginaInicial> {
  List<String> images = [
    "assets/images/alumnos1.jpg",
    "assets/images/escuela1.jpg",
    "assets/images/maestro1.jpg",
    "assets/images/maestro2.jpg",
    "assets/images/maestro3.jpg",
    "assets/images/libro1.jpg",
    "assets/images/director1.jpg",
    "assets/images/director2.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tutorial Grid View"),
        ),
        body: GridView.custom(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          childrenDelegate: SliverChildBuilderDelegate(
            (BuildContext, index) {
              return Image.asset(
                images[index],
                fit: BoxFit.cover,
              );
            },
            childCount: 8,
          ),
          padding: EdgeInsets.all(10),
          shrinkWrap: true,
        ));
  }
}
