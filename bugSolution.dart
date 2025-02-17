```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Check if the key exists before accessing
      if (jsonData.containsKey('nonExistentKey')) {
        final data = jsonData['nonExistentKey'];
        print(data);
      } else {
        print('Key 