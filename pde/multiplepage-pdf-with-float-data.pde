import processing.pdf.*;

PGraphicsPDF pdf;

void setup() {
  size(432, 620);
  // randomSeed(0);  // Uncomment to make the same book each time
  pdf = (PGraphicsPDF)beginRecord(PDF, "Permutations_with_float data print to console.pdf");
  beginRecord(pdf);
}

void draw() {  
  background(255);

println("Permutation");
float r1 = random(255); 
float g1 = random(255);  
float b1 = random(255);
println("set 1:", r1, ",", g1, ",", b1);

float r2 = random(255);
float g2 = random(255);
float b2 = random(255);
println("set 2:", r2, ",", g2,",", b2);

float r3 = random(255);
float g3 = random(255);
float b3 = random(255);
println("set 3:", r3, ",", g3, ",", b3);
println(" ");


color[] colors = {
  color(r1, g1, b1), color(r2, g2, b2), color(r3, g3, b3)
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
    noStroke();
    rect(16+46*x, 16.8+66.8*y, 32, 52);
  }
}
  
  if(frameCount == 250) {
    endRecord();
    exit();  // Quit
  } else {
    pdf.nextPage();  // Tell it to go to the next page 
  }
}