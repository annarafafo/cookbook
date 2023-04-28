import 'package:flutter/material.dart';

class ListContainer extends StatelessWidget {
  final Widget child;
  const ListContainer(this.child, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 250,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10)),
      child: child
    );
  }
}
