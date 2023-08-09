import 'package:flutter/material.dart';

// ****************************************************************
// remove the previous screen and replace the new screen
// ****************************************************************

Future<void> primaryNavigator(BuildContext context,
        {required String routeTo}) =>
    Navigator.of(context).pushReplacementNamed(routeTo);

// ****************************************************************
// stack to the previous screen with the new screen
// ****************************************************************

Future<void> secondaryNavigator(BuildContext context,
        {required String routeTo}) =>
    Navigator.of(context).pushNamed(routeTo);

// ****************************************************************
// stack to the previous screen with the new screen
// ****************************************************************

void popNavigator(BuildContext context) => Navigator.of(context).pop();
