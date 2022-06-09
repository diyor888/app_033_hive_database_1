class SignUp {
  String? email;
  String? number;
  String? address;

  SignUp({this.email, this.number, this.address});

  SignUp.formJson(Map<String, dynamic> json)
      : email = json['email'],
        number = json["number"],
        address = json["address"];

  Map<String, dynamic> toJson() => {
        "email": email,
        "number": number,
        "address": address,
      };
}
