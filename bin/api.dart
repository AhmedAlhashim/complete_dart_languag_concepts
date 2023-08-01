import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io'; // Import 'dart:io' to use 'stdin' for user input.

void main() async {
  while (true) {
    try {
      var albums = await fetchAlbum();

      // Ask the user to enter the index of the album they want to access.
      print("---------");
      print(
          'Enter the index of the album you want to access (0 to ${albums.length - 1}):');
      var albumIndex = int.parse(stdin.readLineSync()!);

      // Check if the entered index is within the valid range.
      if (albumIndex >= 0 && albumIndex < albums.length) {
        // Access the album based on the user input.
        var album = albums[albumIndex];

        // Print the details of the chosen album.
        print('Album ID: ${album['albumId']}');
        print('ID: ${album['id']}');
        print('Title: ${album['title']}');
        print('URL: ${album['url']}');
        print('Thumbnail URL: ${album['thumbnailUrl']}');
      } else {
        print(
            'Invalid album index. Please enter a valid index within the range.');
      }
    } catch (e) {
      print('Error occurred: $e');
    }
  }
}

Future<List<dynamic>> fetchAlbum() async {
  final url = 'https://jsonplaceholder.typicode.com/photos';
  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    var decodedBody = json.decode(response.body);
    return List<dynamic>.from(
        decodedBody); // Convert the decoded JSON to a list of dynamic objects.
  } else {
    throw Exception('Error fetching albums: ${response.statusCode}');
  }
}
