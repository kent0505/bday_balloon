import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Field extends StatelessWidget {
  const Field({
    super.key,
    required this.controller,
    required this.hintText,
    this.onlyNumber = false,
    this.multiline = false,
    this.maxLength = 20,
    required this.onChanged,
  });

  final TextEditingController controller;
  final String hintText;
  final bool onlyNumber;
  final bool multiline;
  final int maxLength;
  final void Function() onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextField(
        controller: controller,
        keyboardType: onlyNumber
            ? TextInputType.number
            : multiline
                ? TextInputType.multiline
                : null,
        maxLines: multiline ? null : 1,
        inputFormatters: [
          LengthLimitingTextInputFormatter(maxLength),
          if (onlyNumber) FilteringTextInputFormatter.digitsOnly
        ],
        textCapitalization: TextCapitalization.sentences,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontFamily: 'w500',
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            vertical: multiline ? 10 : 0,
            horizontal: 22,
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontFamily: 'w500',
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
        ),
        onTapOutside: (event) {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        onChanged: (value) {
          onChanged();
        },
      ),
    );
  }
}
