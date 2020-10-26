import 'package:flutter/material.dart';

const _greyColor = Color(0xFF333333);

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: new Image.asset(
          'assets/logo_large.png',
          width: 84,
        ),
      ),
      body: Container(
          height: MediaQuery.of(context).size.height,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.black,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: _greyColor,
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: 'Email o número de teléfono',
                        labelStyle: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      cursorColor: Colors.white,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: _greyColor,
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: 'Contraseña',
                        labelStyle: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      cursorColor: Colors.white,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: _greyColor,
                      width: 3.0,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                  ),
                  margin: EdgeInsets.all(16.0),
                  width: double.infinity,
                  height: 48,
                  child: FlatButton(
                    splashColor: Colors.grey,
                    color: Colors.black,
                    child: Text(
                      'Iniciar sesión',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('¿Necesitas ayuda?',
                      style: TextStyle(color: Colors.grey[100], fontSize: 16)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('¿Primera vez en Netflix? Subscribete ya.',
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                      'El inicio de sesión esta protegido por Google reCAPTCHA para comprobar que no eres un robot. Más info.',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey, fontSize: 12)),
                )
              ],
            ),
          )),
    );
  }
}
