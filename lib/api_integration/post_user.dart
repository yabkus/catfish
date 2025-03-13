import 'package:dio/dio.dart';

class Post {
  final String title;
  final String body;
  final int userId;

  // Constructor
  Post({required this.title, required this.body, required this.userId});

  // Convert the Post object to JSON
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'body': body,
      'userId': userId,
    };
  }
}

// Function to send a POST request
Future<void> createPost(Post post) async {
  const String url =
      'https://jsonplaceholder.typicode.com/posts'; // Example API endpoint

  try {
    // Create a Dio instance
    final dio = Dio();

    // Send POST request
    final response = await dio.post(
      url,
      data: post.toJson(),
      options: Options(
        contentType: 'application/json',
      ),
    );

    // Handle response
    if (response.statusCode == 201) {
      print('Post created: ${response.data}');
    } else {
      print('Failed to create post. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}

void main() async {
  // Create a Post object
  Post newPost =
      Post(title: 'Hello Dart', body: 'This is a test post.', userId: 1);

  // Send the POST request
  await createPost(newPost);
}
