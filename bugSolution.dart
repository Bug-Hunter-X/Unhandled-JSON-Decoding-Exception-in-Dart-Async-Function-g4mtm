```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      //Check if jsonData is a map before accessing 'name'
      if (jsonData is Map && jsonData.containsKey('name')){
        final String name = jsonData['name'];
        print('Name: $name');
      } else {
        print('Invalid JSON format or missing "name" key.');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error fetching data: $e');
    //Handle or re-throw the exception
    rethrow; 
  }
}
```