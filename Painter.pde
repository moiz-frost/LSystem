class Painter {

  String todo;
  float len;
  float angle;

  Painter(String s, float l, float t) {
    todo = s;
    len = l; 
    angle = t;
  } 

  void render() {
    fill(0, 255, 0);
    stroke(200, 128, 255);
    for (int i = 0; i < todo.length(); i++) {
      char c = todo.charAt(i);
      if (c == 'F') {
        println(len);
        line(0,0,len,0);
        translate(len,0);
      }
      else if(c == 'G'){
        translate(len,0);
      }
      else if (c == '+') {
        rotate(angle);
      } 
      else if (c == '-') {
        rotate(-angle);
      } 
      else if (c == '[') {
        pushMatrix();
      } 
      else if (c == ']') {
        popMatrix();
      }
    } 
  }

  void setLen(float l) {
    len = l; 
  } 

  void changeLen(float percent) {
    len *= percent; 
  }
  
  void forward() {
    strokeWeight(10);
    stroke(#6B4B01);
    line(0, 0, 0, -angle);
    translate(0, -angle);
}

  void setToDo(String s) {
    todo = s; 
  }

}