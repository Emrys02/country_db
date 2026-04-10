import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' show SvgPicture;

class CountryFlag extends StatelessWidget {
  final String _assetPath;
  final double? _height;
  final double? _width;
  final BoxFit? _fit;
  final AlignmentGeometry? _alignment;
  const CountryFlag({
    required String assetPath,
    double? height,
    double? width,
    BoxFit? fit,
    AlignmentGeometry? alignment,
    super.key,
  }) : _alignment = alignment,
       _width = width,
       _fit = fit,
       _height = height,
       _assetPath = assetPath;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      _assetPath,
      package: 'country_db',
      height: _height,
      width: _width,
      fit: _fit ?? .contain,
      alignment: _alignment ?? .center,
    );
  }
}
