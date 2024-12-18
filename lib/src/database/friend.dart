class Friend {
  Friend({
    this.id = 0,
    required this.name,
    required this.lastName,
    required this.phone,
    required this.notes,
  });

  int id;
  String name;
  String lastName;
  String phone;
  String notes;

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'lastName': lastName,
      'phone': phone,
      'notes': notes,
    };
  }

  factory Friend.fromMap(Map<String, dynamic> map) {
    return Friend(
      id: map['id'],
      name: map['name'],
      lastName: map['lastName'],
      phone: map['phone'],
      notes: map['notes'],
    );
  }
}
