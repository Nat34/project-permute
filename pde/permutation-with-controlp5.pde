import controlP5.*;

ControlP5 cp5;

ColorPicker cp;
ColorPicker cp2;
ColorPicker cp3;

void setup() {
fullScreen();
noStroke();

cp5 = new ControlP5(this);
cp = cp5.addColorPicker("picker")
  .setPosition(270, 240)
  .setColorValue
  (color(255, 255, 255, 255))
  ;
  
cp5 = new ControlP5(this);
cp2 = cp5.addColorPicker("picker")
  .setPosition(270, 350)
  .setColorValue
  (color(255, 255, 255, 255))
  ;
  
cp5 = new ControlP5(this);
cp3 = cp5.addColorPicker("picker")
  .setPosition(270, 460)
  .setColorValue
  (color(255, 255, 255, 255))
  ;
}

void draw() {
background(255);
fill(0, 80);
rect(260, 230, 275, 80);
fill(0, 80);
rect(260, 340, 275, 80);
fill(0, 80);
rect(260, 450, 275, 80);

color[] colors = {
color(cp.getColorValue()), color(cp2.getColorValue()), color(cp3.getColorValue())
};

int[][] structure = {
{0,0,0,1,0,0,2,0,0},
{0,0,1,1,0,1,2,0,1},
{0,0,2,1,0,2,2,0,2},
{0,1,0,1,1,0,2,1,0},
{0,1,1,1,1,1,2,1,1},
{0,1,2,1,1,2,2,1,2},
{0,2,0,1,2,0,2,2,0},
{0,2,1,1,2,1,2,2,1},
{0,2,2,1,2,2,2,2,2},
};


for (int x=0; x<9; x++) {
for (int y=0; y<9; y++) {
  fill(colors[structure[y][x]]);
  rect(770+35*x, 120+55*y, 25, 45);
  }
}
}

public void controlEvent(ControlEvent c) {
  if(c.isFrom(cp)) {
    int r = int(c.getArrayValue(0));
    int g = int(c.getArrayValue(1));
    int b = int(c.getArrayValue(2));
    int a = int(c.getArrayValue(3));
    color col = color(r,g,b,a);
println("event\talpha:"+a+"\tred:"+r+"\tgreen:"+g+"\tblue:"+b+"\tcol"+col);
}
 if(c.isFrom(cp2)) {
  int r = int(c.getArrayValue(0));
  int g = int(c.getArrayValue(1));
  int b = int(c.getArrayValue(2));
  int a = int(c.getArrayValue(3));
  color col = color(r,g,b,a);
println("event\talpha:"+a+"\tred:"+r+"\tgreen:"+g+"\tblue:"+b+"\tcol"+col);
}
if(c.isFrom(cp3)) {
  int r = int(c.getArrayValue(0));
  int g = int(c.getArrayValue(1));
  int b = int(c.getArrayValue(2));
  int a = int(c.getArrayValue(3));
  color col = color(r,g,b,a);
println("event\talpha:"+a+"\tred:"+r+"\tgreen:"+g+"\tblue:"+b+"\tcol"+col);
}
}

// color information from 
//ColorPicker 'picker' are 
//forwarded to the picker(int) function
void picker(int col) {
println("picker\talpha:"+alpha(col)+"\tred:"+red(col)+"\tgreen:"+green(col)+"\tblue:"+blue(col)+"\tcol"+col);
}


void keyPressed() {
  switch(key) {
    case('1'):
    // method A to change color
    cp.setArrayValue(new float[] {120, 0, 120, 255});
    cp2.setArrayValue(new float[] {120, 0, 120, 255});
    cp3.setArrayValue(new float[] {120, 0, 120, 255});
    break;
    case('2'):
    // method B to change color
    cp.setColorValue(color(255, 0, 0, 255));
    cp2.setColorValue(color(255, 0, 0, 255));
    cp3.setColorValue(color(255, 0, 0, 255));
    break;
}
}