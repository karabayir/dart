void main() {
  String username = "";

  if (username.length > 2) {
    print("object");
  } else {
    throw UsernameException();
  }
}

class UsernameException implements Exception {
  @override
  String toString() {
    return "username null girmişsin bunu düzelt.";
  }
}
