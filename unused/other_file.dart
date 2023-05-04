// part of 'cli.dart';


// @immutable
// class Person {
//   final String name;
//   final double age;

//   Person({
//     required this.name,
//     required this.age,
//   });

//   Person copyWith({
//     String? name,
//     double? age,
//   }) {
//     return Person(
//       name: name ?? this.name,
//       age: age ?? this.age,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'name': name,
//       'age': age,
//     };
//   }

//   factory Person.fromMap(Map<String, dynamic> map) {
//     return Person(
//       name: map['name'] as String,
//       age: map['age'] as double,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Person.fromJson(String source) => Person.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   String toString() => 'Person(name: $name, age: $age)';

//   @override
//   bool operator ==(covariant Person other) {
//     if (identical(this, other)) return true;
  
//     return 
//       other.name == name &&
//       other.age == age;
//   }

//   @override
//   int get hashCode => name.hashCode ^ age.hashCode;
// }

// extension StringDuplication on String {
//   String duplicated(String other) {
//     return this + this + other;
//   }
// }


// // Mixins
// mixin ElevatedClient {
//   void sendElevatedMessage(String text){
//     print("Sending message: $text");
//   }
// }

// @immutable
// class User extends Object {
//   final String _firstName;
//   final String _lastName;

//   User(this._firstName, this._lastName);

//   factory User.admin(bool isAdmin){
//     if (isAdmin){
//       return Admin(
//         specialAdminField: 134,
//         firstName: "Tony",
//         lastName: "Dan"
//       );
//     } else {
//       return User(
//         "Tony",
//         "Dan"
//       );
//     }
    
//   }

//   String get fullName => "$_firstName $_lastName";

//   @mustCallSuper
//   void signOut() => print("Signing Out");

// }

// class Admin extends User with ElevatedClient {

//   final double specialAdminField;


//   Admin({
//     required this.specialAdminField,
//     required String firstName, 
//     required String lastName
//   }): super(firstName, lastName);

//   @override
//   String get fullName => 'admin:${super.fullName}';

//   @override
//   void signOut() {
//     super.signOut();
//     print("Admin Signed Out");
//   }
// }

// class ChatBot with ElevatedClient {

// }






//  How to extend methods to existing classes or libraries




// Interfaces

// abstract class DataReader<T> {
//   T readData();
// }

// class IntDataReader implements DataReader<int> {
//   @override
//   int readData() {
//     print("Performing Logic");
//     return 125;
//   }
// }
// class StringDataReader implements DataReader<String> {
//   @override
//   String readData() {
//     print("Performing Logic");
//     return "Hello World";
//   }
// }




