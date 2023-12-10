class Operation{
  double a = 0;
  double b = 0;
  String operation = '=';
  double result = 0;

  bool variable = false; // if false - variable 'a' is going to be set, if true - variable 'b' is going to be set


  // Setters

  set variableA (value){
    a = value;
  }

  set variableB (value){
    b = value;
    result = execute();
  }

  // Getters
  get variableA => a;

  get variableA => b;

  set operationSet (newOperation) {
    operation = newOperation;
  }

  double execute() {
    switch (operation){
      case '=':
        return 0.0;
      case '+':
        return a + b;
      case '-':
        return a - b;
      case '*':
        return a * b;
      case '/':
        return a / b;
      default:
        return 0.0;
    }
  }

  double plus() {
      return  a + b;
  }

  double minus() {
    return  a - b;
  }

  double multiply() {
    return  a * b;
  }

  double divide() {
    return  a / b;
  }
}