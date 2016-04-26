# project-permute
Processing Development Environment

This repository contains files and documentation created during the setup, creation and development of a program using Processing.  This project was developed in conjunction with the course *Creative Engagements with Digital Technology* at the Univeristy of Pittsburgh.

## Project: 
To generate a tool that will produce a grid of rectangles structured around a permutation of three colors, where order is important and repetition is allowed. 

## Drivers: 
The drivers behind this project are to learn programming basics, to understand the fundamentals of computer graphics, to produce a visually appealing artwork and tool, to save time in experimentation with color arrangements and to engage with the community of artists, students, designers, programmers and educators who use this technology.  

The Processing approach to programming made learning these basics understandable and fun.  This approach is informed through a context within design and the arts, where it is easy to write, generate and modify images, drawings, animations as well as the integration of audio, video and exportation to the web.  Processing made it possible to understand the code elements, the syntax, comments, functions, expressions, statement, arrays, etc while introducing software concepts in the context of the arts.  Learning within this context enabled me to learn about the fundamentals of computer graphics as well.  For example, understanding that a position on the screen is comprised of an x-coordinate and y-coordinate and that a point is the simplest visual element.  

Producing a visually appealing artwork and tool began with thinking about the aesthetics of the color arrangement within a defined structure, but took on another meaning as coding this program progressed.  As my code evolved to make the program shorter and more modular, the beauty in concise and well constructed code emerged.  I have a penchant for repetition, which is why saving time in experimentation with color arrangements based on a permutation was a goal of mine for this project.  With Processing, I was able to exercise control over the time spent executing these permutations.  Finally, engaging with the community of those using Processing as a way to discuss and share advice informed this project.  My first interaction with the Processing forum yielded code too complex for me to generate alone.  Because of this interaction I was able to move forward with my project in a way I didn’t think possible.  

I believe this project helped develop and explain my understanding of creativity and technology, took advantage of collaboration through web-based communities, helped strengthen my ability to access a digital tool and generated a creative project and presentation well suited for further exploration.  Processing helped develop and explain my understanding of creativity and technology because I was able to explore my ideas directly while simultaneously learning basic programming techniques and theory.  It took advantage of the skills of the members of this community to help drive the project in a meaningful direction.  The online and text-based reference tools helped educate me on topics like software, programming languages, ASCII, Unicode, Binary and order of operations, which strengthened my ability to use and evaluate digital tools.  The final products of this project, which include code, a program, a presentation and a web-based version of the program, are all suitable for public consumption as part of my artist and information professional portfolio.

## Technology:  
The technology in use for this project is Processing, a software that integrates a development environment and programming language.  The name “Processing” is inspired by the core function of computers as processing machines and the project itself focusing on the “process” of creation rather than end results.  Processing has different programming modes, Java, Python and Android mode.  This enables the possibility to render sketches on different platforms and program in different ways.  For this project I am using the default programming mode Java.  The Processing programming language is its own programming language but it is built on Java and therefore has many similarities to it as well as differences (Fig. 1).  The Processing Development Environment (PDE) consists of a simple text editor for writing code, a series of menus and other functionality.  Downloading and installing the Processing software was straightforward and easy.  I am running the Processing software on a Windows operating system.  The Processing development environment is released as open source under the GPL. 

Fig. 1, Code Comparison

| Processing        | Java           |
| ------------- |:-------------:| -----:|
| `background (255);`     | `g.setColor(Color.black) fillRect(0, 0, size.width, size.height);`   |

## Resources:
The resources for this project include the software Processing, the Processing Development Environment, the Processing programming language, the text *Processing: A Programming Handbook for Visual Designers and Artists*, the World Wide Web and the Processing Forum.  Each resource played a key role in producing this project.  The book proved to be an invaluable resource, extending well beyond the sections that were used to write the code specific to the program.  Websites like stackoverflow.com, W3schools.com, Processing.org, Processingjs.org and mathisfun.com played an integral part in helping to troubleshoot throughout the project.  The Processing Forum acted as a resource for community engagement and troubleshooting.

## Structure:
> In mathematics, the notion of permutation relates to the act of arranging all the members of a set into some sequence or order, or if the set is already ordered, rearranging (reorder) its elements, a process called permuting. [Wikipedia](https://pages.github.com/)

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
Fig. 3

```processing
size(325, 505);
background(255);
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

/*Draw the display window 325 pixels wide and 505 pixels high
325 = Width
There are 9 permutations per column by 25 (the width of each rectangle) and 10 spaces of white space by 10 pixels each)
(9x25) + (10+10)  
225+100=325
(9x45) + (10x10) 
There are 9 permutations per column by 45 (the height of each rectangle) and 10 spaces of white space by 10 pixels each)
505  = Height
405+100 = 505*/
  


