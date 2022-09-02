import 'package:flutter/material.dart';

class PeopleAndUserDP extends StatelessWidget {
  const PeopleAndUserDP(
      {Key? key,
      required this.assetImageUrl,
      required this.inputHeight,
      required this.inputWidth})
      : super(key: key);

  final String assetImageUrl;
  final double inputHeight;
  final double inputWidth;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: inputHeight,
      width: inputWidth,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(assetImageUrl), fit: BoxFit.cover),
        shape: BoxShape.circle,
      ),
    );
  }
}
