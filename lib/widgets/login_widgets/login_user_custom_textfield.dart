import 'package:flutter/material.dart';

class UserCustomTextField extends StatelessWidget {
  final TextEditingController textControl;
  const UserCustomTextField({super.key, required this.textControl});

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
              "Usuario:",
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
              return null;
            },
          ),
        ],
      ),
    );
  }
}
