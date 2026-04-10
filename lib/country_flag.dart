import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' show SvgPicture;

class CountryFlag extends StatelessWidget {
  final String assetPath;
  const CountryFlag({required this.assetPath, super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(assetPath, package: 'country_db');
    ;
  }
}
