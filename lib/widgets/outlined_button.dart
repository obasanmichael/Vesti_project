import 'package:flutter/material.dart';

class OutlinedButton extends StatelessWidget {
  const OutlinedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      child: ElevatedButton(onPressed: (){}, child: Row())
    );
  }
}