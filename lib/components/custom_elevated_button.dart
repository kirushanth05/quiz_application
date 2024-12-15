import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton(
    this.buttonText,{
      super.key,
      });


final String buttonText;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 51.19,
      width: 303,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
        ),
        onPressed: () {},
        child: Text(
          buttonText,
          style: const TextStyle(
            color: Color(0xff01356B),
            fontSize: 16,
          )
        )
      )
    );
  }
}