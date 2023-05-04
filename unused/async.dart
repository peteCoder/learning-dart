import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart' as http;

// part 'cli.freezed.dart';

Future<void> main(List<String> arguments) async {
  // Asynchronous Dart

  try {
    final url = "https://dummyjson.com/products/";
    var result = await http.Client().get(Uri.parse(url));
    print(result.body);

  } catch(e) {
    print("An error occurred! $e");
  }
  

}


// void main(List<String> arguments) async {
//   // Asynchronous Dart

//   final url = "https://dummyjson.com/products/";
//   http.Client().get(Uri.parse(url))
//     .then((response) => print(response.body))
//     .catchError((e) => print("error! $e"));

// }

// Asynchronous Dart
  // final url = "https://dummyjson.com/products/";

  // final client = http.Client();

  // client.get(Uri.parse(url))
  //   .then((response) => {

  //     print(response.body)
  //     // print(response.statusCode)
  //   })
  //   .catchError((e) => print("error! $e"));