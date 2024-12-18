import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import 'guest.dart';

class DB {
  late Database _db;

  Future<void> init() async {
    try {
      final dbPath = await getDatabasesPath();
      final path = join(dbPath, 'bday_balloon.db');
      _db = await openDatabase(
        path,
        version: 1,
        onCreate: (Database db, int version) async {
          await db.execute('''
            CREATE TABLE guests (
              id INTEGER PRIMARY KEY AUTOINCREMENT,
              title TEXT
            )
          ''');
        },
      );
    } on Object catch (error, stackTrace) {
      Error.throwWithStackTrace(error, stackTrace);
    }
  }

  Future<List<Guest>> getGuests() async {
    final List<Map<String, dynamic>> maps = await _db.query('guests');
    return List.generate(maps.length, (index) => Guest.fromMap(maps[index]));
  }

  Future<List<Guest>> addGuest(Guest guest) async {
    await _db.insert(
      'guests',
      guest.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    return await getGuests();
  }

  Future<List<Guest>> editGuest(Guest guest) async {
    await _db.update(
      'guests',
      guest.toMap(),
      where: 'id = ?',
      whereArgs: [guest.id],
    );
    return await getGuests();
  }

  Future<List<Guest>> deleteGuest(Guest guest) async {
    await _db.delete(
      'guests',
      where: 'id = ?',
      whereArgs: [guest.id],
    );
    return await getGuests();
  }
}
