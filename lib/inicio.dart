import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const inactiveColor = Color(0xFF1D1E33);
const activeColor = Color(0xFF3700B3);

enum Genero {
  mujer,
  hombre,
}

class Inicio extends StatefulWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {

  Genero genSeleccionado = Genero.mujer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MONITOR DE SALUD'),
      ),
      body: Column(
        children: [
          Expanded(child: Row(
            children: [
              Expanded(child: GestureDetector(
                onTap: () {
                  setState(() {
                    genSeleccionado = Genero.hombre;
                  });
                },
                child: Container(
                  margin: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: genSeleccionado == Genero.hombre ? activeColor : inactiveColor,
                  ),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(FontAwesomeIcons.mars, size: 65.0,),
                      SizedBox(height: 5.0,),
                      Text('HOMBRE', style: TextStyle(
                        fontSize: 18.0, color: Color(0xFF8D8E98),
                      ),)
                    ],
                  ),
                ),
              )),
              Expanded(child: GestureDetector(
              onTap: () {
                setState(() {
                  genSeleccionado = Genero.mujer;
                });
              },
                child: Container(
                  margin: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: genSeleccionado==Genero.mujer ? activeColor : inactiveColor,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(FontAwesomeIcons.venus, size: 55.0,),
                      SizedBox(height: 5.0,),
                      Text('MUJER', style: TextStyle(fontSize: 18.0,
                      color: Color(0xFF8D8E98)),)
                    ],
                  ),
                ),
              )),
            ],
          )),
          Expanded(child: Container(
            margin: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Color(0xFF1D1E33),
            ),
          )),
          Expanded(child: Row(
            children: [
              Expanded(child: Container(
                margin: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xFF1D1E33),
                ),
              )),
              Expanded(child: Container(
                margin: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xFF1D1E33),
                ),
              )),
            ],
          )),
          Container(
            height: 50.0,
            color: Color(0xFFEB1555),
            margin: EdgeInsets.only(top:10.0),
          ),
        ],
      ),
    );
  }
}
