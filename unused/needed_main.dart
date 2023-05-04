

// Enums
// enum AccountType {free, premium, vip}


// abstract classes cannot be instatiated
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

// class Admin extends User {

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

// final admin = Admin(firstName: 'John', lastName: 'Doe', specialAdminField: 123);
// final user = admin as User;
// final factoryUser = User.admin(true);

// print(admin.specialAdminField);

// print(user.fullName);
// print(user is! Admin);
// if (user is Admin){
//   print(user.specialAdminField);
// }
// admin.signOut();


// class User {
//   final String name;
//   final String photoUrl;


//   // constructor
//   const User({
//     required String firstName,
//     required String lastName,
//     required this.photoUrl
//   }) : name = "$firstName $lastName";
  
//   // const User({
//   //   required this.name,
//   //   required this.photoUrl
//   // });

//   // Methods
//   bool hasLongName() => name.length > 10;

//   bool hasShortName() {
//     return name.length < 10;
//   }
  

//   static void myMethod() {}

//   static const minNameLength = 3;

// }

// class Example {
//   int public;
//   int _private;

//   Example(this.public, this._private);

//   // Named constructor
//   Example.namedConstructor({
//     required this.public,
//     required int privateParameter,
//   }): _private = privateParameter;
// }



// void needed_mainFunc() {

//   User user = User(
//     firstName: 'John',
//     lastName: 'Doe',
//     photoUrl: 'https://example.com/abc',
//   );
//   print(user.name);
//   print(user.hasShortName());
  
  // user.email = "peter@gmail.com";

  // print(user.email);



  // User myUser4 = const User(
  //   name: 'James During',
  //   photoUrl: 'https://photo.com/abc',
  // );

  // print(myUser3.hasShortName());
  // print(myUser4.hasLongName());

  // User myUser = User();
  // print(myUser.name);

  // final myUser2 = User();
  // myUser2.name = 'Jane Doe';

  // print(myUser2.name);



  // const userAccountType = AccountType.free;
  // AccountType.values[1];
  // print(userAccountType.index);

  // switch(userAccountType){
  //   case AccountType.free:
  //     print("0 USD");
  //     break;
  //   case AccountType.premium:
  //     print("50 USD");
  //     break;
  //   case AccountType.vip:
  //     print("289 USD");
  //     break;
  //   default:
  //     print("Unknown Plan");
  //     break;
  // }



  // // Use of if and else, loops in the dart list data structure
  // bool isSignedIn = true;

  // <String>[
  //   'This is a fake content',
  //   if (isSignedIn) 'Sign Out' else 'Sign In',
  // ];

  // final listNum = <String>[
  //   for(int i = 0; i < 5; i++) i.toString(),
  //   for(final number in <int>[5, 6, 7]) number.toString(),
  // ];

  // final list1 = ['hello', 'world'];
  // final list2 = ['what', 'up'];

  // // Spread Operators
  // final ourFinalList = <String>[
  //   ...list1,
  //   ...list2
  // ];

  // print(ourFinalList);




  // Data Structures in Dart Programming Language or Standard Library
  // final names = ['John', 'Jane', 'Matthew'];

  // .toList() converts to List data type
  // final nameLength = names.map((name) => name).toList();
  // .where(x => x == "") filters the exact item in the list that matches the condition.
  // final nameJohn = names.where((name) => name == "John").toList();

  // print(nameLength);
  // print(nameJohn);

  // for (int i = 0; i < nameLength.length; i++){
  //   print(nameLength[i]);
  // }

  // for (final name in nameLength) {
  //   print(name);
  // }

  // nameLength.forEach((name) => print(name));
  // or
  // nameLength.forEach(print);




  // List
  // List<int> myList = [1, 2, 3];

  // final firstElement = myList[0];

  // final myList2 = <int>[2, 4, 6, 8];

  // // Map or Key-Value Pairs
  // Map<String, dynamic> myMap = {
  //   "name": "John Doe",
  //   "age": 42,
  //   "register": true,
  // };

  // final name = myMap["name"];
  // print(name);

  // // Set --- cannot be duplicated...
  // Set<int> mySet = {1, 2, 3, 4, 4};
  // print(mySet.length);





  // Higher order function or callback functions in JS
  // int myIntFunction(int Function() callback) {
  //   return callback();
  // }

  // int callbackFunc() {
  //   return 90 + 9;
  // }

  // Continue here --- Syntax Error...

  // int plusFive (int x) {
  //   return 5 + x;
  // }

  // typedef IntTransformer = int Function(int);

  // int Function(int) twice(int Function(int) f) {
  //   return (int x) {
  //     return f(f(x));
  //   };
  // }

  // final twicePlusFive = twice((x) => x + 5);
  // final result = twicePlusFive(5);
  // print(result);

  // print(myIntFunction(callbackFunc));




  // Named functions and with required params
  // void namedRequiredParams(int positional_argument, {
  //   required int a, 
  //   required int b
  // }) {}

  // Named functions and with optional params
  // void namedOptionalParams(int? positional_argument, {
  //   int? a, 
  //   int? b
  // }) {}

  // void namedOptionalParams({
  //   int? x,
  //   double? y,
  //   String greetings = "Hi"
  // }){
  //   namedOptionalParams(x: 5, y: 6, greetings: "Hello");
  // }

  // void namedRequiredParams(
  //   int positional_argument, {
  //   required int x,
  //   required double y,
  //   required String greetings
  // }){
  //   namedRequiredParams(10, x: 5, y: 3.5, greetings: "Hellooo");
  // }


  // While and For Loops

  // final myInteger = 20;

  // for (int i = 0; i < 5; ++i){
  //   print("The value is $i");
  // }

  // int i;
  // i = 0;
  // bool flag = true;
  // while (flag) {
  //   print("The value is $i");
  //   if (i == 10){
  //     flag = false;
  //   }
  //   i++;
  // }

  // do{
  //   print("The value is $i");
  //   i++;    
  // } while (false);
  
  // Switch Statements

  // switch(myInteger){
  //   case 10:
  //     print("It's ten");
  //     break;
  //   case 20:
  //     print("It's twenty");
  //     break;
  //   case 30:
  //     print("It's thirty");
  //     break;
  //   default:
  //     print("It's something else... ");
  //     break;
  // }


  // Control flow statement if, if-else and else statements
  // final integerValue = 5;

  // if (integerValue == 5) {
  //   print("It's five...");
  // } else if (integerValue == 9) {
  //   print("It's nine...");
  // } else if (integerValue == 10) {
  //   print("Its ten...");
  // } else {
  //   print("I don't know the value...");
  // }


  

  // bool isEqual = 5 == 10;
  // int age = 40 + 3;
  // print(isEqual);

  // String Concantenation and Interpolation

  // String myString = "Daniel is  " + "${age + 40} years old.";

  // print(myString);

  // int x;

  // x = 5;

  // x++; // 6
  // --x; // 5
  // ++x; // 6
  // x--; // 5.0
  // x += 5; // 10.0

  // x -= 2; // 8.0
  // x *= 5; // 40.0
  // x ~/= 5; // 8.0
  // print(x);


  // String name;
  // name = "Peter";
  // print(name.contains("P"));
  // print("Hello there, $name!");

  // // types for numbers
  // int myNumber = 5;
  // double myDouble = 5.5;
  // num number = 5;

  // print(myNumber.toString());
  // print(number);
  // print(myNumber.isEven);
  // print(myDouble);

  // // boolean
  // bool myBool = true;

  // print(myBool);

  // // Dynamic Types --- Dynamic types can be anything and can change anytime...
  // dynamic mySomething = "Hi, Debbie!";
  // mySomething = true;
  // mySomething = "I can change anytime...";
  // mySomething = 8;
  // print(mySomething);

  // // Var can also be used and can change... Type inference

  // var myGreeting = "You are my guy...";
  // myGreeting = "Greetings have changed...";
  // print(myGreeting);

  // String? myNull; // or `var myNull = null`
  // print(myNull?.length);


  // Mathematical Operators
  // int result;
  // double anotherResult;
  // anotherResult = 5 / 5; // `/` Divides two numbers and results to the decimal places like 1.0 because of the datatype called double.
  // result = 5 ~/ 5; // `~/` Truncate or cutoff the remainder or decimal places...
  // print(result);
  // print(anotherResult);
// }


// String returnString(bool flag, [String? greeting = "Hi"]) {
//   if (flag){
//     return "Good Morning...";
//   } else {
//     return greeting;
//   }
// }