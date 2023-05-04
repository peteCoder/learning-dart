

// void exampleMethod() {
//   print("Hello world");
// }


// class UserObj {
//   final String firstName;
//   final String lastName;
//   final String email;

//   // Constructor
//   const UserObj({
//     required this.firstName,
//     required this.lastName,
//     required this.email,
//   });

//   String getFullName() => '$firstName $lastName';
//   String get FullName => '$firstName $lastName';

  // null coercing operator --- tells us that if the left hand of the operation is null
  // the  right hand will be used or returned...
  // String get email {
  //   return email ?? 'Email not present.';
  // }

  // set email(String value) {
  //   if (value.contains("@")){
  //     email = value;
  //   } else {
  //     email = null;
  //   }
  // }

  // @override
  // bool operator ==(covariant UserObj other) {
  //   if (identical(this, other)) return true;

  //   return 
  //     other.firstName == firstName &&
  //     other.lastName == lastName;
  // }

  // @override
  // int get hashCode => firstName.hashCode ^ lastName.hashCode;
}
