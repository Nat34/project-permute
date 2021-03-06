# project-permute
Processing Development Environment

This repository contains files and documentation created during the setup, creation and development of a program using Processing.  This project was developed in conjunction with the course *Creative Engagements with Digital Technology* at the Univeristy of Pittsburgh and titled: *Permutations, Arrays and Color: Controlling the Repetition in Processing*.

## Project: 
To generate a tool that will produce a grid of rectangles structured around a permutation of three colors, where order is important and repetition is allowed.  There are five iterations of code for this project and numerous sketches.  The result of the fifth iteration is a java application.  A video of the application in use can be viewed on [Vimeo](https://vimeo.com/160660732).

## Drivers: 
The drivers behind this project are to learn programming basics, to understand the fundamentals of computer graphics, to produce a visually appealing artwork and tool, to save time in experimentation with color arrangements and to engage with the community of artists, students, designers, programmers and educators who use this technology.  

The Processing approach to programming made learning these basics understandable and fun.  This approach is informed through a context within design and the arts, where it is easy to write, generate and modify images, drawings, animations as well as the integration of audio, video and exportation to the web.  Processing made it possible to understand the code elements, the syntax, comments, functions, expressions, statement, arrays, etc while introducing software concepts in the context of the arts.  Learning within this context enabled me to learn about the fundamentals of computer graphics as well.  For example, understanding that a position on the screen is comprised of an x-coordinate and y-coordinate and that a point is the simplest visual element.  

Producing a visually appealing artwork and tool began with thinking about the aesthetics of the color arrangement within a defined structure, but took on another meaning as coding this program progressed.  As my code evolved to make the program shorter and more modular, the beauty in concise and well constructed code emerged.  I have a penchant for repetition, which is why saving time in experimentation with color arrangements based on a permutation was a goal of mine for this project.  With Processing, I was able to exercise control over the time spent executing these permutations.  Finally, engaging with the community of those using Processing as a way to discuss and share advice informed this project.  My first interaction with the Processing forum yielded code too complex for me to generate alone.  Because of this interaction I was able to move forward with my project in a way I didn’t think possible.  

I believe this project helped develop and explain my understanding of creativity and technology, took advantage of collaboration through web-based communities, helped strengthen my ability to access a digital tool and generated a creative project and presentation well suited for further exploration.  Processing helped develop and explain my understanding of creativity and technology because I was able to explore my ideas directly while simultaneously learning basic programming techniques and theory.  It took advantage of the skills of the members of this community to help drive the project in a meaningful direction.  The online and text-based reference tools helped educate me on topics like software, programming languages, ASCII, Unicode, Binary and order of operations, which strengthened my ability to use and evaluate digital tools.  The final products of this project, which include code, a program, a presentation and a web-based version of the program, are all suitable for public consumption as part of my artist and information professional portfolio.

## Technology:  
The technology in use for this project is Processing, a software that integrates a development environment and programming language.  The name “Processing” is inspired by the core function of computers as processing machines and the project itself focusing on the “process” of creation rather than end results.  Processing has different programming modes, Java, Python and Android mode.  This enables the possibility to render sketches on different platforms and program in different ways.  For this project I am using the default programming mode Java.  The Processing programming language is its own programming language but it is built on Java and therefore has many similarities to it as well as differences (Fig. 1).  The Processing Development Environment (PDE) consists of a simple text editor for writing code, a series of menus and other functionality.  Downloading and installing the Processing software was straightforward and easy.  When this project began I was running the Processing software on a Windows operating system, but have since switched to Linux Mint 17.3 Cinnamon.  The Processing development environment is released as open source under the GPL. 

Fig. 1, Code Comparison

| Processing        | Java           |
| ------------- |:-------------:| -----:|
| `background (255);`     | `g.setColor(Color.black) fillRect(0, 0, size.width, size.height);`   |

## Resources:
The resources for this project include the software Processing, the Processing Development Environment, the Processing programming language, the text *Processing: A Programming Handbook for Visual Designers and Artists*, the World Wide Web and the Processing Forum.  Each resource played a key role in producing this project.  The book proved to be an invaluable resource, extending well beyond the sections that were used to write the code specific to the program.  Websites like stackoverflow.com, W3schools.com, Processing.org, Processingjs.org and mathisfun.com played an integral part in helping to troubleshoot throughout the project.  The Processing Forum acted as a resource for community engagement and troubleshooting.

## Structure:
> In mathematics, the notion of permutation relates to the act of arranging all the members of a set into some sequence or order, or if the set is already ordered, rearranging (reorder) its elements, a process called permuting. [Wikipedia](https://en.wikipedia.org/wiki/Permutation)

I felt this definition is successful at clearly articulating the structural arrangement for this project.  Why I chose a permutation stems from interest in repetition, arrangement and chance.  Integrating the notion of permutation allowed me to explore color arrangements in an ordered and deliberate way while simultaneously incorporating chance in the project.  I choose three colors at random to generate an ordered sequence and by chance produce a visually appealing artwork.

There are permutations where repetition is allowed and permutations without repetition.  The results from calculating a permutation where 3 is the number of colors to choose from and 3 is the number of colors chosen, where repetition is allowed and order matters, was the most visually appealing and satisfying to me.  This arrangement (Fig. 2) is the result from calculating this permutation and my decision to arrange the first 9 permutations into columns.  This decision to arrange the permutations in columns was based on my intuition that this arrangement would be successful when using rectangles and color.  This arrangement then informed the parameters of the rect() function and size() function (Fig.3).  Fig. 3 is the first iteration of my code.

Fig. 2

```
{a,a,a} {b,a,a} {c,a,a} 
{a,a,b} {b,a,b} {c,a,b}
{a,a,c} {b,a,c} {c,a,c}
{a,b,a} {b,b,a} {c,b,a} 
{a,b,b} {b,b,b} {c,b,b}
{a,b,c} {b,b,c} {c,b,c} 
{a,c,a} {b,c,a} {c,c,a} 
{a,c,b} {b,c,b} {c,c,b} 
{a,c,c} {b,c,c} {c,c,c}

```
**Iteration.1**
Fig. 3

```processing
size(325, 505);
background(255);
noStroke();
color c1 = color(255, 255, 102);
color c2 = color(255, 102, 204);
color c3 = color(153, 0, 255);
//permutation 1
fill(c1);
rect(10, 10, 25, 45);
fill(c1);
rect(45, 10, 25, 45);
fill(c1);
rect(80, 10, 25, 45);
```

The `size()` function has two parameters; the first sets the width of the window and the second sets its height.  Determining the size of the display window was one of the most interesting aspects of this project.  So often the paper and canvas size has informed the size, structure and display of  my 2D work but here the parameters of one `rect()` function permuted determined the size of the window display (Fig. 4).

Fig. 4

```processing
size(325, 505);
```
###### Draw the display window 325 pixels wide by 505 pixels high
1. 325 = Width
  * There are 9 permutations per column by 25 (the width of each rectangle)
  * 10 units of white space by 10 pixels each
  * (9 x 25) + (10 + 10)  
  * 225 + 100 = 325
2. 505  = Height
  * There are 9 permutations per column by 45 (the height of each rectangle)
  * (9 x 45) + (10 x 10) 
  * 10 units of white space by 10 pixels each
  * 405 + 100 = 505

The `background()` function sets the background color to white (Fig. 3).  The`noStroke();` function disables drawing the default stroke (outline) around the shape.  The `color c1 = color(255, 255, 102);` runs the `color()` function and `color c1` is defined by the output of the function, which creates colors for storing in variables of the color datatype.  The parameters are interpreted as `RGB` or `HSB` values depending on the current `colorMode()`.  The default mode is `RGB` values from 0 to 255 and, therefore, `color(255, 255, 102)` produces a light yellow hue.  Within each permutation I use the `color()` variable as fill color, which sets the color used to fill each shape.  Fig. 5 highlights the syntax for the rectangle shape.  Fig. 6 gives an overview of the code mapped to the output of the code.

Fig.5

```processing
Syntax rect(a, b, c, d)
parameters
a - x-coordinate
b - y-coordinate
c - width of rectangle
d - height of rectangle
```
Fig.6

![alt text](https://github.com/Nat34/project-permute/blob/master/images/fig6.png "Fig.6")

Because it takes 6 lines of code to draw each permutation and 27 permutations are desired, the code bloats to 162 lines.  To reduce the lines of code needed to execute each permutation the assistance of `Arrays` was called.  An array is a list of data. The benefits of using arrays is to avoid the cumbersome chore of storing data points in individual variables.  In computer programming, an array is a set of data elements stored under the same name. Arrays can be created to hold any type of data, and each element can be individually assigned and read.  Usually, a `for` loop is used to access array elements, especially with large arrays.

This code demonstrates using separate variables (Fig. 7). The code below (Fig. 8) shows how the data elements can be logically grouped together in an array.  Array elements are numbered starting with zero. The first element is at position `[0]`, the second is at `[1]`, and so on.  In this case, position`[0]` is 10, position `[1]`, 65 and so on.

Fig.7

```processing
rect(10, 10, 25, 45);
rect(10, 65, 25, 45);
rect(10, 120, 25, 45);
rect(10, 175, 25, 45);
rect(10, 230, 25, 45);
rect(10, 285, 25, 45);
rect(10, 340, 25, 45);
rect(10, 395, 25, 45);
rect(10, 450, 25, 45);
```
Fig. 8
```processing
rect(10, x[i],25,45);

int [] x = {10, 65, 120, 175, 230, 
            285, 340, 395, 450 };
```
**Iteration.2**

This is the second iteration of the code, using an array within a program (Fig. 9).  The array is declared with brackets and the type of data it will store is specified.  Within this single statement we declare, create and assign.  Declare the int brackets then create variable x then assign each y-coordinate a data point, 10, 65, 120..The data for each rectangle is accessed in sequence with a `for` loop (Fig. 10).  The `for` function controls a sequence of repetitions. A basic `for` structure has three parts: init, test, and update. Each part must be separated by a semicolon (;). The loop continues until the test evaluates to false. Fig. 11 demonstrates how the `for` loop controls then reads each array element through the loop.

Fig.9
```processing
size(325, 505);
background(255);

int [] x = {
10, 65, 120, 175, 230, 285, 340, 395, 450
};

for (int i = 0; i < x.length; i++) {
rect(10, x[i], 25, 45);
rect(45, x[i], 25, 45);
rect(80, x[i], 25, 45);
rect(115,x[i], 25, 45);
rect(150,x[i], 25, 45);
rect(185,x[i], 25, 45);
rect(220,x[i], 25, 45);
rect(255,x[i], 25, 45);
rect(290,x[i], 25, 45);
}
```
Fig.10
```processing
for (init; test; update) {
    statements
}
```
Fig.11
```processing
for (int i = 0; i < x.length; i++) {
```
`int i =0;` is the initiate, the `i < x.length;` is the test.  The length field stores the number of elements in an array. This field is stored within the array and is accessed with the dot operator.  The `i++;` is the update.  The `++` is an arithmetic operator used to perform an increment of one on the variable i.

This second iteration is 16 lines of code, which is 146 lines less than the first iteration.  However, the code does not assign the rectangles their fill color based on the permutation. From here I sought assistance from the [Processing Forum](https://forum.processing.org/two/discussion/11662/permutations-arrays-colors#latest). Many thanks to [TfGuy44](https://forum.processing.org/two/profile/279/TfGuy44).  The result was this iteration of the code (Fig. 12).

**Iteration.3**

Fig. 12

```processing
size(325, 510);
background(255);
 
color[] colors = {
  color(255, 255, 102), color(255, 102, 204), color(153, 0, 255)
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
```
This third iteration employs the use of an array of objects.  Within this type of array the following occurs:
 
1. Declare the array 
2. Create the array 
3. Create each object in the array 

This code creates a `color[]` array to hold three color objects.  The second array in the code is defined by the `int[][]`. Again this array follows the steps of declare, create, assign, and also basing it off the permutation structure. I believe this is a considered a multi-dimensional array, where data can also be stored and retrieved from arrays with more than one dimension.  I am still learning how this section of the code works.

The third part of this code uses Nested `for()` loops, the fill sets the color, where the color variable has been assigned using an array.  A nested `for` loop is a `for` loop within a `for` loop, an inner `for` loop (the y) within the body of an outer one, the x. From what I gather the first pass of the outer loop triggers the inner loop, which executes to completion. Then the second pass of the outer loop triggers the inner loop again. This repeats until the outer loop finishes (Fig. 12).

**Interation.4**

```processing
size(226, 406);
background(255);
 
color[] colors = {
  color(242, 81, 197), color(46, 255, 121), color(255, 255, 111)
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
    rect(1+25*x, 1+45*y, 25, 45);
    save("rectangle3.tif"); 
  }
}
```

**Interation.5**

The fifth iteration of this project is a java application which integrates [ControlP5](http://www.sojamo.de/libraries/controlP5/), a GUI(graphical user interface) library for Processing.  The controller used in the application is the ControlP5 Color picker, which includes four horizontal sliders controlling the RGBA channels of of each color.  RGBA stands for Red, Green, Blue and Alpha.  The Alpha channel controls the opacity of the color.  
> If a pixel has a value of 0% in its alpha channel, it is fully transparent (and, thus, invisible), whereas a value of 100% in the alpha channel gives a fully opaque pixel (traditional digital images). [RGB Color Space Wikipedia](https://en.wikipedia.org/wiki/RGBA_color_space)

Processing can export Java Applications for the Linux, Macintosh, and Windows platforms, enabling the application to run in FullScreen mode and create a folder which contains the source code for the sketch, and all required libraries.  The code is below and the pde file in the project-permute repository.  A video of the application in use can be viewed on [Vimeo](https://vimeo.com/160660732).

```processing
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
          .setColorValue(color(255, 255, 255, 255))
          ;
  cp5 = new ControlP5(this);
  cp2 = cp5.addColorPicker("picker")
          .setPosition(270, 350)
          .setColorValue(color(255, 255, 255, 255))
          ;
  cp5 = new ControlP5(this);
  cp3 = cp5.addColorPicker("picker")
          .setPosition(270, 460)
          .setColorValue(color(255, 255, 255, 255))
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
  // when a value change from a ColorPicker is received, extract the ARGB values
  // from the controller's array value
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

// color information from ColorPicker 'picker' are forwarded to the picker(int) function
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
```
