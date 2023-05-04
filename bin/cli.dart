import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart' as http;

import 'dart:convert';
// part 'cli.freezed.dart';

void main(List<String> arguments) async {
  // final jsonTextObj = '{"name": "bezkoder", "age": 30 }';
  // print(jsonTextObj);

  // final User user = User.fromJson(jsonDecode(jsonTextObj));

  // print(user.age);

  final secondObj = '''{
    "title": "Dart Tutorial",
    "description": "Way to parse Json",
    "author": {
      "name": "bezkoder",
      "age": 30
    }
  }''';

  

  print(secondObj);

}


class Book {
  final String title;
  final String description;
  final User author;

  Book(this.title, this.description, this.author);

  factory Book.fromJson(dynamic json) {
    return Book(
      json["title"] as String, 
      json["description"] as String, 
      User.fromJson(json["author"])
    );
  }

  @override
  String toString() {
    return '{ title: ${this.title}, description: ${this.description}, author:  }';
  }
}


class User{
  final String name;
  final int age;

  User(this.name, this.age);

  factory User.fromJson(dynamic json){
    return User(json["name"] as String, json["age"] as int);
  }

  @override
  String toString() {
    return '{ name: ${this.name}, age: ${this.age} }';
  }

}



