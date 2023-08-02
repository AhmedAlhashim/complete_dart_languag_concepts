void main() {
  Shape circle = Circle();
  Shape rectangle = Rectangle();
  Shape square = Square();

  List<Shape> shapes = [circle, rectangle, square];
  for (var value in shapes) {
    value.printInfo();
  }
}

abstract class Shape {
  void printInfo() => print("Shape");
}

class Circle extends Shape {
  @override
  void printInfo() => print("Circle");
}

class Rectangle extends Shape {
  @override
  void printInfo() => print("Rectangle");
}

class Square extends Shape {
  @override
  void printInfo() => print("Square");
}
