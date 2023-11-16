import 'package:flutter/material.dart';
/*ESTA PANTALLA ES FUNCIONALEMTE IGUAL login_password_custom_textfield
Esta pantalla la cree para tener una separación entre los widgets para LOGIN y REGISTRO
Muy posiblemente se podria usar el mismo widget en ambas pantallas */

class RegisterPasswordCustomTextField extends StatefulWidget {
  final TextEditingController controller;
  const RegisterPasswordCustomTextField({super.key, required this.controller});

  @override
  State<RegisterPasswordCustomTextField> createState() =>
      _LoginPasswordCustomTextFieldState();
}

class _LoginPasswordCustomTextFieldState
    extends State<RegisterPasswordCustomTextField> {
  bool isObscured = true;

  //Nos da control del input asociado
  final focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    widget.controller.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(color: Colors.white),
    );

    final inputDecoration = InputDecoration(
      hintText: "*********",
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      border: outlineInputBorder,
      fillColor: Colors.white,
      filled: true,
      suffixIcon: IconButton(
        icon: const Icon(
          Icons.remove_red_eye_outlined,
          color: Colors.black12
        ),
        onPressed: () {
          isObscured = !isObscured;
          widget.controller.value = widget.controller.value.copyWith(
            text: widget.controller.text,
            selection:
                TextSelection.collapsed(offset: widget.controller.text.length),
          );
          setState(() {});
        },
      ),
    );

    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
      child: Column(
        children: [
          const Align(
            alignment: Alignment.topLeft,
            child: Text(
                "Contraseña:",
                style: TextStyle(
                  letterSpacing: 5,
                  fontSize: 20, 
                  fontWeight: FontWeight.w900, 
                  color: Colors.white
                ),
              ),
          ),
          const SizedBox(height: 5),
          TextFormField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: isObscured,
              onTapOutside: (event) => focusNode.unfocus(),
              focusNode: focusNode,
              controller: widget.controller,
              decoration: inputDecoration,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Campo requerido";
                }
                return null;
              }),
        ],
      ),
    );
  }
}
