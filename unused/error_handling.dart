import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


// part 'cli.freezed.dart';

void main(List<String> arguments) {

  try{
    final myInt = int.parse("123sd");
    print(myInt);
  } on FormatException{
    print("MyCustomException occured!!!");
  } finally {
    print("This always runs!!!");
  }

}

