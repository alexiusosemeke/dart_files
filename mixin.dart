// this is for mixin

mixin Likes {
  int likesCount = 0;

  void incrementCount() {
    likesCount++;
  }

  void decrementCount() => likesCount--;
}
