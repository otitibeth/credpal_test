import 'package:flutter/cupertino.dart';

bool isDesktop(BuildContext context) => MediaQuery.of(context).size.width > 900;
bool isMedium(BuildContext context) =>
    MediaQuery.of(context).size.width >= 600 &&
    MediaQuery.of(context).size.width <= 900;
bool isMobile(BuildContext context) => MediaQuery.of(context).size.width < 600;
