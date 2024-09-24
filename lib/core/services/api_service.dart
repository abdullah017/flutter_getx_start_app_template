abstract class ApiService {
  Future<dynamic> get(String url, {Map<String, dynamic>? queryParameters});
  // Add more methods like post, put, delete as needed
}
