```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response is a JSON
      final jsonData = jsonDecode(response.body);
      // Accessing data that might not exist
      final data = jsonData['nonExistentKey'];
      print(data); //This will throw an exception if 'nonExistentKey' is not present
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```