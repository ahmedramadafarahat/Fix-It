import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Divider(
            endIndent: 20,
            color: Color(0xff1B3A56),
            indent: 80,
          ),
        ),
        Text(
          'OR',
          style: TextStyle(
            fontSize: 18,
            color: Color(0xff1B3A56),
          ),
        ),
        Expanded(
          child: Divider(
            endIndent: 80,
            color: Color(0xff1B3A56),
            indent: 20,
          ),
        ),
      ],
    );
  }
}
