import 'package:flutter/material.dart';

class CustomCheckbox extends StatefulWidget {
  const CustomCheckbox({
    Key? key,
    this.width = 24.0,
    this.height = 24.0,
    this.iconSize = 20,
    this.onChanged,
    this.checkColor = Colors.white,
    required this.message
  }) : super(key: key);

  final double width;
  final double height;
  // Now you can set the checkmark size of your own
  final double? iconSize;
  final Color? checkColor;
  final Function(bool?)? onChanged;
  final String message;

  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() => isChecked = !isChecked);
        widget.onChanged?.call(isChecked);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Container(
          width: widget.width,
          height: widget.height,
          decoration: BoxDecoration(
            color: isChecked ? const Color.fromARGB(255, 53, 137, 206) : const Color.fromARGB(255, 97, 92, 92),
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: isChecked
              ? Icon(
                  textDirection: TextDirection.ltr,
                  Icons.check,
                  size: widget.iconSize,
                  color: widget.checkColor,
                )
              : null,
        ),
        Text(
          widget.message,
          style: const TextStyle(
            //letterSpacing: 5,
            fontSize: 18, 
            fontWeight: FontWeight.w900, 
            color: Colors.grey
          ),
        ),
        ]
      ),
    );
  }
}