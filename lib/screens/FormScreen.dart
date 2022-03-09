import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  State<FormScreen> createState() => _formScreenState();
}

class _formScreenState extends State<FormScreen> {
bool _isChecked =false;

  late TextEditingController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TextEditingController();
  }

@override
void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }


  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return const Color.fromARGB(255, 7, 44, 75);
      }
      return const Color.fromARGB(255, 9, 8, 71);
    }
    return Scaffold(

      body: Center(
        child: Container(
           width: 300.0,
          height: 390.0,
           padding: const EdgeInsets.all(15.0),
          child:Column(
            children: [
              TextField(
                keyboardType: TextInputType.emailAddress,
                controller: _controller,
                decoration: const InputDecoration(
                    labelText: "Correo",
                    hintText: "correo@correo.com",
                    prefixIcon: Icon(Icons.contact_mail)),
              ),
              const SizedBox(height: 40.0),
              const TextField(
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  labelText: "Contraseña",
                  prefixIcon: Icon(Icons.lock)
                  ),
              ),
              const SizedBox(height: 30.0,),
               TextField(
                keyboardType: TextInputType.number,
                inputFormatters: [

                FilteringTextInputFormatter.allow(RegExp('[0-9 -]')),  
                LengthLimitingTextInputFormatter(16)
                ],
                decoration:const InputDecoration(
                  labelText: 'Tarjeta',
                   prefixIcon: Icon(Icons.credit_card),
                )
              ),
              const SizedBox(height: 30.0),

              
              Checkbox(
              checkColor: const Color.fromARGB(255, 255, 255, 255),
               fillColor: MaterialStateProperty.resolveWith(getColor),
               value: _isChecked,
               onChanged: (bool? value) {
               setState(() {
               _isChecked = value!;
               });
               }
              )
            ],
          ),
        ),
       ),
    );
  }
}