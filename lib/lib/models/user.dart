class User {
  String id;
  String name;
  String email;
  String phone;
  bool isProvider;
  String photoUrl;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    this.isProvider = false,
    this.photoUrl = '',
  });
}
