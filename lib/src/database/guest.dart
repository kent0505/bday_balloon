class Guest {
  Guest({
    this.id = 0,
    required this.title,
  });

  int id;
  String title;

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
    };
  }

  factory Guest.fromMap(Map<String, dynamic> map) {
    return Guest(
      id: map['id'],
      title: map['title'],
    );
  }
}
