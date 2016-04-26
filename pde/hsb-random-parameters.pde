colorMode(HSB, 360, 100, 100);
size(325, 510);
background(360);
noStroke();


float h1 = random(360); //hue 0 to 360 around the color wheel
float s1 = random(100); //saturation 0 to 100 %
float b1 = random(90,100); //brightness 0 to 100 %
println(h1, ",", s1, ",", b1); //this program writes to the console the hue, saturation and brightness parameters



float h2 = random(255);
float s2 = random(255);
float b2 = random(90,100);
println(h2, ",", s2, ",", b2);

float h3 = random(255);
float s3 = random(255);
float b3 = random(90,100);
println(h3, ",", s3, ",", b3);

color[] colors = {
  color(h1, s1, b1), color(h2, s2, b2), color(h3, s3, b3)
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
    rect(10+35*x, 10+55*y, 25, 45);
  }
}