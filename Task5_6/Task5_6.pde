
  // Initially, I declare and initialize the variables in the global scope

int circleSize;
int numberOfCircles = 10;
int x;
int y;
int counter = 0;
int rowCounter = 0;
int red;
int green;
int blue;

void setup() {
  size(400, 400);

  // The color variables are assigned values.

  int red = 255;
  int green = 255;
  int blue = 255;

  // Circle size is defined, so that the higher the numberOfCircles variable is,
  // the smaller the circles become.

  circleSize = width/numberOfCircles;
  ellipseMode(CORNER);
}

void draw() {

  // Variables x and y are initialized
  // circleSize is currently 40, because 400 (width) / 10 (numberOfCircles) = 40.
  // x denotes the start position of each ellipse on the x axis, and y denotes
  // the start position of each ellipse on the y axis – from their left corner

  x = circleSize*counter;
  y = circleSize*rowCounter;

  // The ellipse is drawn with a color which can take on red, green and blue values

  fill(red, green, blue);
  ellipse(x, y, circleSize, circleSize);

  counter =  frameCount % numberOfCircles == 0 ? 0 : counter+1;
  rowCounter =  counter==0 ? rowCounter+1:rowCounter;

  // 6.c
  // Brief explanation of this "if" condition:
  // So if counter has 0 as value, a color consisting of random red, green and blue is assigned.
  // When a new ellipse with x as 0 is drawn, a new color is assigned which is repeated,
  // since the if condition is no longer true. Thus, the same color values are reused.

  if (counter == 0) {
    red = int(random(255));
    green = int(random(255));
    blue = int(random(255));
  }
}
