import 'package:flutter/material.dart';

class formulario extends StatefulWidget {
  const formulario({super.key});

  @override
  State<formulario> createState() => _formularioState();
}

class _formularioState extends State<formulario> {
   bool _isSelected = false;
    bool _isOption = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 203, 224, 243),
      body: SafeArea(
        child: Container(
          
          child: Column(
           
            children: <Widget>[
              Text(
            'FORMULARIO',
            style: TextStyle(fontFamily: 'cursiva', fontSize: 30.0),
          ),
              

              SizedBox(height: 16.0),
              TextFormField(
                autofocus: true,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.person),
                  labelText: 'Nombre',
                ),
              ),

              SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.directions),
                  labelText: 'Direccion',
                ),
              ),

              SizedBox(height: 16.0),
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.phone),
                  labelText: 'Telefono',
                ),
              ),
              Text(
            'Sexo',
            style: TextStyle(fontFamily: 'cursiva', fontSize: 15.0),
          ),
                SizedBox(height: 16.0),
                
              Row(
                children: [
                  Checkbox(
                    value: _isSelected,
                    onChanged: (bool? value) {
                      setState(() {
                        _isSelected = value!;
                      });
                    },
                  ),
                  Text('Hombre'),
                  Checkbox(
                    value: _isOption,
                    onChanged: (bool? value) {
                      setState(() {
                        _isOption = value!;
                      });
                    },
                  ),
                  Text('Mujer'),
                ],
              ),



              SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.email),
                  labelText: 'Correo electrónico',
                ),
              ),

              SizedBox(height: 16.0),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.lock),
                  labelText: 'Contraseña',
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
  maxLines: null, // Permite que el campo de texto se expanda automáticamente
  decoration: InputDecoration(
    hintText: 'Escribe tu opinion aqui !!',
    labelText: 'DEJA TU OPINION',
     helperText: 'su opinion',
    
  ),
),

              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {},
                child: Text('Iniciar sesión'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}