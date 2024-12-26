```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming JSON response
      final jsonData = jsonDecode(response.body);
      // Access data (This might throw if jsonData is not a map)
      final String name = jsonData['name']; 
      print('Name: $name');
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error fetching data: $e');
    //Re-throw or handle the error based on application needs
    rethrow; //Example: re-throwing for higher level handling 
  }
}
```