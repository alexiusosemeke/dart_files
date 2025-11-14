void main() {
  Father myFather = Father("10 feet", "Red", "Blue");
  myFather.bio();

  Son mySon = Son("Alexius", "10 feet", "Brown", "Black");
  mySon.bio();
}

class Father {
  String height;
  String eyeColor;
  String hairColor;

  Father(this.height, this.eyeColor, this.hairColor);

  //methods

  void bio() {
    print(
      "Father's height is $height, eye color is $eyeColor, and hair color is $hairColor",
    );
  }
}

class fakeFather extends Father {
  String name;
  fakeFather(this.name, String height, String eyeColor, String hairColor)
    : super(height, eyeColor, hairColor);

  @override
  void bio() => print("");
}

class Son extends Father {
  String name;

  Son(this.name, height, eyeColor, hairColor)
    : super(height, eyeColor, hairColor);

  void bio() {
    print(
      "Son's name is $name, eye color is $eyeColor, hair Color is $hairColor, and height is $height.",
    );
  }
}
