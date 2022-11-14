import 'package:flutter/material.dart';

void main () => runApp(Miapp());
class Miapp extends StatelessWidget {
  const Miapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mi app",
      home: Inicio(),

    );
  }
}

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body:  cuerpo(),
      )
    ;
     }
}


Widget cuerpo(){
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage("https://color-hex.org/colors/023052.png"),
          fit: BoxFit.cover)
      ),
      child : Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            fondo(),
            
            user(),
            password(),
            SizedBox(height: 15,),
            botonEntrar(),
        ],
        ),
      ),
      
      );
}
Widget fondo(){
  return Container(
     
height: 354,
width: 324,
    
    child: Image.network("https://upeu.edu.pe/wp-content/uploads/2022/03/03.png"),);
}


Widget nombre(){
  return Text (
    'Sign In',
     style: TextStyle(
            color: Colors.white,
            fontSize: 44.4,
             fontWeight: FontWeight.bold),
     );
}

Widget user(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 31 , vertical: 15),
    child: TextField(
      decoration: InputDecoration(
        hintText: "Usuario",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

Widget password(){
 return Container(
    padding: EdgeInsets.symmetric(horizontal: 31 , vertical: 15),
    child: TextField(
      decoration: InputDecoration(
        hintText: "Contraseña",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}


Widget botonEntrar() {
  return ElevatedButton(
        
      style: ElevatedButton.styleFrom(
        
          primary: Colors.orange,
          onPrimary: Colors.black,
          padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10)),
          
      onPressed: () {},
      child: Text("Iniciar Sesion", style: TextStyle(fontSize: 25, color: Colors.white),),  );
}