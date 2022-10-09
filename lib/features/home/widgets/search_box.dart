import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {

  final InputBorder _inputFieldBorder = const OutlineInputBorder(
    borderSide: BorderSide(
      color: Color(0xFFEAF3F5),
      width: 0,
      style: BorderStyle.none,
    ),
  );

  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Name or number",
        filled: true,
        prefixIcon: const Icon(Icons.search),
        fillColor: const Color(0xFFEAF3F5),
        enabledBorder: _inputFieldBorder,
        errorBorder: _inputFieldBorder,
        focusedBorder: _inputFieldBorder,
        border: _inputFieldBorder,
      ),
    );
  }
}