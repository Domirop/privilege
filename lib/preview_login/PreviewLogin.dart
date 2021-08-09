import 'package:flutter/material.dart';
import 'package:privilege/charge_screen/ChargeScreen.dart';

class PreviewLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
           children: [
             SizedBox(
               height: 100,
             ),
             Image.asset("assets/images/NombreReservalo.png",
               width: 200,
             ),
             SizedBox(
               height: 50,
             ),
             Image.asset("assets/images/iconoHome.png",
               height: 250,
             ),
             SizedBox(
               height: 80,
             ),
             GestureDetector(
               onTap: () {
                 Navigator.of(context).push(
                 MaterialPageRoute<void>(builder: (_) => ChargeScreen()),
                 );
               },
               child: Container(
                 width:  MediaQuery.of(context).size.width,
                 margin: EdgeInsets.symmetric(horizontal: 50.0),
                 padding: EdgeInsets.symmetric(vertical: 15.0),
                 decoration: BoxDecoration(
                     color: Color.fromRGBO(230, 73, 90, 1),
                        borderRadius: BorderRadius.all(Radius.circular(20))
                 ),
                 child: Text(
                   "Iniciar sesión",
                   textAlign: TextAlign.center,
                   style: TextStyle(
                     color: Colors.white,
                     fontSize: 24,
                   ),
                 ),
               ),
             ),
             SizedBox(
               height: 30,
             ),
             GestureDetector(
               onTap: () => {},
               child: Container(
                 width:  MediaQuery.of(context).size.width,
                 margin: EdgeInsets.symmetric(horizontal: 50.0),
                 padding: EdgeInsets.symmetric(vertical: 15.0),
                 decoration: BoxDecoration(
                     color: Color.fromRGBO(230, 73, 90, 1),
                     borderRadius: BorderRadius.all(Radius.circular(20))
                 ),
                 child: Text(
                   "Registrarse",
                   textAlign: TextAlign.center,
                   style: TextStyle(
                     color: Colors.white,
                     fontSize: 24,
                   ),
                 ),
               ),
             ),
           ],
        ),
      ),
    );
  }
}
