class User {
  User({required this.id, this.name});

  String id;
  String? name;

  @override
  String toString() {
    return name ?? id;
  }
}