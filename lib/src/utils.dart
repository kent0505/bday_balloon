import 'dart:developer' as developer;

import 'package:image_picker/image_picker.dart';

int getTimestamp() => DateTime.now().millisecondsSinceEpoch ~/ 1000;

void logger(Object message) => developer.log(message.toString());

bool getActive(List<String> strings) {
  for (String string in strings) {
    if (string.isEmpty) return false;
  }
  return true;
}

Future<XFile> pickImage() async {
  try {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) return XFile('');
    return image;
  } catch (e) {
    logger(e);
    return XFile('');
  }
}
