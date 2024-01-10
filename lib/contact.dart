class Contact {
  String name;
  String phoneNumber;
  String? imagePath;
  String? email;
  Contact(
      {required this.name,
      required this.phoneNumber,
      this.imagePath,
      this.email});
}
