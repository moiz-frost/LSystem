class Rule {
  char a; //left side
  String b; //right side

  Rule(char a_, String b_) {
    a = a_;
    b = b_; 
  }

  char getA() {
    return a;
  }

  String getB() {
    return b;
  }

}