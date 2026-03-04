import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> main() async {
  final url = Uri.parse("https://jsonplaceholder.typicode.com/posts");

  try {
    final response = await http.get(
      url,
      headers: {
        "Accept": "application/json",
        "User-Agent": "DartConsoleApp"
      },
    );

    print("Status Code: ${response.statusCode}");

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body);

      print("\nPosts:\n");

      for (var post in data.take(5)) {
        print("Title: ${post['title']}");
        print("----------------------");
      }
    } else {
      print("API Error: ${response.statusCode}");
    }
  } catch (e) {
    print("Exception occurred: $e");
  }
}