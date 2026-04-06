class Country {
  const Country({
    required this.name,
    required this.flagPath,
    required this.dialCode,
    required this.shortCode,
    required this.iso3Code,
    this.isHighRisk = false,
  });

  factory Country.fromJson(Map<String, dynamic> json) {
    return Country(
      name: json['name'] as String,
      flagPath: json['flagPath'] as String,
      dialCode: json['dialCode'] as String,
      shortCode: json['shortCode'] as String,
      iso3Code: json['iso3Code'] as String,
      isHighRisk: json['isHighRisk'] as bool,
    );
  }

  final String name;

  /// flag svg asset path
  final String flagPath;

  /// denotes country's international dial code
  final String dialCode;

  /// denotes country's short name following IS0 1366-1 Alpha-2 standard
  final String shortCode;

  /// denotes country's short name following IS0 1366-1 Alpha-3 standard
  final String iso3Code;

  /// dontes country's risk level, if true, the country is considered high risk and should be avoided according to [FATF](https://www.fatf-gafi.org/en/publications/High-risk-and-other-monitored-jurisdictions/increased-monitoring-february-2026.html)
  final bool isHighRisk;

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'flagPath': flagPath,
      'dialCode': dialCode,
      'shortCode': shortCode,
      'iso3Code': iso3Code,
      'isHighRisk': isHighRisk,
    };
  }
}
