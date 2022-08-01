void main() {
  print("tunahan".isAdmin());
  print("teemo".isAdmin());
  print("admin".isAdmin());
}

extension StringUserCheck on String {
  bool isAdmin() {
    return this.toLowerCase() == "admin";
  }
}
