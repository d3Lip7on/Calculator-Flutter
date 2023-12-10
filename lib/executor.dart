class Executor{
  double a = 0;
  double b = 0;
  String operation = '=';

  bool variable = false; // if false - variable 'a' is going to be set, if true - variable 'b' is going to be set


  // Setter
  set setVariableValue (String value){
    if (variable){
      b = double.parse(value);
    }
    else{
      a = double.parse(value);;
    }
  }

  set setOperationValue (String newOperation) {
    operation = newOperation;
  }

  void setValue (String value){
    if (value == '+' || value == '-' || value == '*' || value == '/'){
      setOperationValue = value;
      variable = true;
    }
    else {
      setVariableValue = value;
    }
  }

  // Getters
  get variableA => a;

  get variableB => b;



  double execute() {
    variable = false;
    double result = 0;
    switch (operation) {
      case '+':
        result = a + b;
        a = result;
        return result;
      case '-':
        result = a - b;
        a = result;
        return result;
      case '*':
        result = a * b;
        a = result;
        return result;
      case '/':
        result = a / b;
        a = result;
        return result;
      default:
        return 0.0;
    }
  }
}