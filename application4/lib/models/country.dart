class country {
  final String name;
  final String code;
  final String dialcode;

  country({
    required this.name,
    required this.code,
    required this.dialcode,
  });

  factory country.fromJson(Map<String, String> json) {
    return country(
      name: json['name']!,
      code: json['code']!,
      dialcode: json['dial_code']!,
    );
  }
}
