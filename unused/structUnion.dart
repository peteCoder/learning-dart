import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'cli.freezed.dart';

void main(List<String> arguments) {
  final person1 = Person(firstName: "Daniel", lastName: "Anthony", age: 30);
  print(person1.toString());
  final anotherPerson = person1.copyWith(firstName: "Cynthia");

  print(anotherPerson.firstName);


  // Union instance
  const resultSuccess = Result.loading();
  print(
    resultSuccess.when(
      loading: () {
        return "Your data is Loading...";
      },
      success: (value) {
        return "Yeh! Data gotten successfully: $value";
      },
      failure: (message) {
        return "Oh no, an error occured: $message";
      },
    ),
  );

  print(
    resultSuccess.map(
      loading: (loadingCase) {
        return "Your data is Loading...";
      },
      success: (successCase) {
        return "Yeh! Data gotten successfully: ${successCase.value}";
      },
      failure: (failureCase) {
        return "Oh no, an error occured: ${failureCase.errorMessage}";
      },
    ),
  );

  print(
    resultSuccess.maybeWhen(
      orElse: () => "Nothing",
      loading: () {
        return "Your data is Loading...";
      },
      success: (value) {
        return "Yeh! Data gotten successfully: ${value}";
      },
      failure: (errorMessage) {
        return "Oh no, an error occured: ${errorMessage}";
      },
    ),
  );
}

@freezed
class Person with _$Person {
  
  const factory Person({
    required String firstName,
    required String lastName,
    required int age,
  }) = _Person;
}

// Continue from Union 4:35:09
// Union
@freezed
class Result with _$Result {
  const Result._();
  const factory Result.loading() = _Loading;
  const factory Result.success(int value) = _Success;
  const factory Result.failure(String errorMessage) = _Failure;

}
