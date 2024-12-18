class Gift {
  Gift({
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

  factory Gift.fromMap(Map<String, dynamic> map) {
    return Gift(
      id: map['id'],
      title: map['title'],
    );
  }
}
