import 'package:hive_flutter/hive_flutter.dart';

import 'gift.dart';

Future<void> initHive() async {
  await Hive.initFlutter();
  // await Hive.deleteBoxFromDisk('bday_balloon');
  Hive.registerAdapter(GiftAdapter());
}

Future<List<Gift>> getGifts() async {
  final box = await Hive.openBox('bday_balloon');
  List data = box.get('gifts') ?? [];
  return data.cast<Gift>();
}

Future<List<Gift>> updateGifts(List<Gift> gifts) async {
  final box = await Hive.openBox('bday_balloon');
  box.put('gifts', gifts);
  return await box.get('gifts');
}
