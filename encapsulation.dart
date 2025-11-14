class Admin {
  // this is to make me understand the concept of encapsulation

  bool _signupStatus = true;

  String _userName;
  String _userPassword;

  Admin(this._signupStatus, this._userName, this._userPassword);

  // then we'll create our getter and setter which we will use to access and update
  // the value of the private property

  String get userName => _userName;

  set userName(String newName) => _userName = newName;
}

void main() {
  var admin = new Admin(false, 'Alex', '12345678');
  String newName = admin.userName = "John";
  print(newName);
}
