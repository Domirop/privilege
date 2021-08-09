import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = 0.0;
    double width = 0.0;
    if (MediaQuery.of(context).size.width < 330) {
      width = 83.11;
    } else if (MediaQuery.of(context).size.width > 380) {
      width = 102.0;
    } else {
      width = 90.9;
    }
    if (MediaQuery.of(context).size.height < 600) {
      height = 69.11;
    } else if (MediaQuery.of(context).size.height > 700) {
      height = 102.0;
    } else {
      height = 84.75;
    }
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40.0,
              ),
              Text(
                "Mi perfil",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: height,
                    width: width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(49.5),
                      image: DecorationImage(
                        repeat: ImageRepeat.noRepeat,
                        alignment: Alignment.center,
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/notImage.png'),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "nombre usuario",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                        Text(
                          "email de usuario",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 45.0),
                width: double.infinity,
                child: RaisedButton(
                  onPressed: () => {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7.0),
                  ),
                  color: Color.fromRGBO(222, 99, 44, 1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10.0),
                        child: Icon(
                          Icons.edit,
                          color: Colors.white,
                          size: 25.0,
                        ),
                      ),
                      Text(
                        "Cerrar sesión",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
