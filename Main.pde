Generator lsys;
Painter p;

void setup() {
  size(800, 800);
  snowFlake();
  smooth();
}

void draw() {
  background(0);  
  fill(255);
  textSize(10);
  text("Left Click to Generate", 10, height-10);
  textSize(20);
  text("Generation " + lsys.getGeneration(), 10, 20);
  translate(width/2, height);
  rotate(-PI/2);
  p.render();
  println(lsys.getSentence());
  noLoop();
}

int counter = 0;

void mousePressed() {
  if (counter < 9) {
    pushMatrix();
    lsys.generate();
    p.setToDo(lsys.getSentence());
    p.changeLen(0.50);
    popMatrix();
    redraw();
    counter++;
  }
}

//Examples

void SierpinskiTriangle(){
  //Sierpinski triangle
   Rule[] ruleset = new Rule[2];
   ruleset[0] = new Rule('F',"F--F--F--G");
   ruleset[1] = new Rule('G',"GG");
   // Create Generator with axiom and ruleset
   lsys = new Generator("F--F--F",ruleset);
   p = new Painter(lsys.getSentence(),(400*2),TWO_PI/3);
}
void Buggy(){
  //Buggy
   Rule[] ruleset = new Rule[1];
   //ruleset[0] = new Rule('F',"F[F]-F+F[--F]+F-F");
   ruleset[0] = new Rule('F',"FF+[+F-F-F]-[-F+F+F]");
   lsys = new Generator("F-F-F-F",ruleset);
   p = new Painter(lsys.getSentence(),height*2,PI/2);
}
void Plant1(){
 //Plant
  Rule[] ruleset = new Rule[1];
  ruleset[0] = new Rule('F', "FF+[+F-F-F]-[-F+F+F]");
  lsys = new Generator("F", ruleset);
  p = new Painter(lsys.getSentence(), height/3, radians(25));
}
void Plant2(){
 //Plant
  Rule[] ruleset = new Rule[2];
  ruleset[0] = new Rule('X', "F−[[X]+X]+F[+FX]−X");
  ruleset[1] = new Rule('F', "FF");
  lsys = new Generator("X", ruleset);
  p = new Painter(lsys.getSentence(), (150), radians(25));
}
void CantorDust(){
 //Cantor dust
  Rule[] ruleset = new Rule[2];
  ruleset[0] = new Rule('A', "ABA");
  ruleset[1] = new Rule('B', "BBB");
  lsys = new Generator("A", ruleset);
  p = new Painter(lsys.getSentence(), height, radians(0));
}
void snowFlake(){
 //Snow Flake
  Rule[] ruleset = new Rule[1];
  ruleset[0] = new Rule('F', "F-F++F-F");
  lsys = new Generator("F++F++F", ruleset);
  p = new Painter(lsys.getSentence(), (50), radians(60));
}
void DragonCurve(){
 //Dragon Curve
  Rule[] ruleset = new Rule[2];
  ruleset[0] = new Rule('X', "X+YF+");
  ruleset[1] = new Rule('Y', "−FX−Y");
  lsys = new Generator("FX", ruleset);
  p = new Painter(lsys.getSentence(), (height*9), radians(90));
}