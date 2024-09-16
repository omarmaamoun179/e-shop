import 'package:eshop/Helper/Color.dart';
import 'package:flutter/material.dart';

getSimpleAppBar(
  String title,
  BuildContext context,
) {
  return AppBar(
    elevation: 0,
    titleSpacing: 0,
    backgroundColor: Theme.of(context).colorScheme.white,
    leading: Builder(builder: (BuildContext context) {
      return Container(
        margin: const EdgeInsets.all(10),
        child: InkWell(
          borderRadius: BorderRadius.circular(4),
          onTap: () => Navigator.pop(context),
          child: Center(
            child: Icon(
              Icons.arrow_back_ios_rounded,
              color: Theme.of(context).colorScheme.primarytheme,
            ),
          ),
        ),
      );
    }),
    title: Text(
      title,
      style: TextStyle(
          color: Theme.of(context).colorScheme.primarytheme,
          fontWeight: FontWeight.normal),
    ),
  );
}
