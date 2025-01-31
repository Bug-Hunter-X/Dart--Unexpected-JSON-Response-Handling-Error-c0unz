```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonBody = jsonDecode(response.body);
      // Check if jsonBody is a map and contains the expected key
      if (jsonBody is Map && jsonBody.containsKey('someKey')) {
        final data = jsonBody['someKey'];
        print('Data: $data');
      } else {
        //Handle the case when the response structure is unexpected
        print('Error: Unexpected JSON response structure or missing key.');
      }
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    // Consider more robust error handling, like logging or user feedback
  }
}
```