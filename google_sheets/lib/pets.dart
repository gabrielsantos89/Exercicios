class PetsFields {
  static final String id = 'id';
  static final String name = 'name';
  static final String email = 'email';
  static final String isBeginner = 'isBeginner';

  static List<String> getFields() => [id, name, email, isBeginner];
}
class User {
  final int? id;
  final String name;
  final String email;
  final bool isBeginner;

  const User({
    this.id,
    required this.name,
    required this.email,
    required this.isBeginner,
  });
  Map<String, dynamic> toJson() => {
    PetsFields.id: id,
    PetsFields.name: name,
    PetsFields.email: email,
    PetsFields.isBeginner: isBeginner,
  };
}