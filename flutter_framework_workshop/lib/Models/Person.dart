class Person {
  const Person(
      {required this.id,
      required this.user,
      required this.name,
      required this.lastName,
      required this.age,
      required this.gender,
      required this.photoUrl,
      required this.email,
      required this.description,
      required this.createdAt,
      required this.updatedAt});
  final String id;
  final String user;
  final String name;
  final String lastName;
  final String age;
  final String gender;
  final String photoUrl;
  final String email;
  final String description;
  final String createdAt;
  final String updatedAt;
  Person.fromJSON(Map<String, dynamic> json)
      : id = json['_id'],
        user = json['user'],
        name = json['name'],
        lastName = json['lastName'],
        age = json['age'].toString(),
        gender = json['gender'],
        photoUrl = json['photo_url'],
        email = json['email'],
        description = json['description'],
        createdAt = json['createdAt'],
        updatedAt = json['updatedAt'];
}
