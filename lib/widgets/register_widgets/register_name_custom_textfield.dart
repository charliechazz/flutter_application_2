import 'package:flutter/material.dart';

class NameCustomTextField extends StatelessWidget {
  final TextEditingController textControl;
  const NameCustomTextField({super.key, required this.textControl});

  @override
  Widget build(BuildContext context) {
    //Nos da control del input asociado
    final focusNode = FocusNode();

    final outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(color: Colors.white),
    );

    final inputDecoration = InputDecoration(
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      border: outlineInputBorder,
      fillColor: Colors.white,
      filled: true,
    );

    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
      child: Column(
        children: [
          const Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Nombre:",
              style: TextStyle(
                letterSpacing: 5,
                fontSize: 20, 
                fontWeight: FontWeight.w900, 
                color: Colors.white
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            keyboardType: TextInputType.name,
            onTapOutside: (event) => focusNode.unfocus(),
            focusNode: focusNode,
            controller: textControl,
            decoration: inputDecoration,
           validator: (value) {
              if (value!.isEmpty) {
                return "Campo requerido";
              }
              if (!(value.contains(RegExp(
                      r'[a-zA-Z0-9]'))) ||
                  value.contains(' ')) {
                return "El usuario no puede contener espacios ni simbolos especiales";
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}
