//Create a static piece of generative art, using for loops, two-dimensional geometry
//and simple mathematical functions. – could include (random, sin, cos) 

//number of columns and rows
int cols = 10;
int rows = 10;

int stepx;
int stepy;



void setup(){
  
  size (500,500);
  stepx = width/cols;
  stepy = height/rows;
 
  
}

void draw(){
  
//checkered pattern

for (int a = 0; a < cols; a++){
  for (int b = 0; b < rows; b++){
    
  float x = a*stepx;
  float y = b*stepy;
 
  stroke(255);
  strokeWeight(2);
  fill(0);
  rect(x, y, stepx, stepy);
  
  }
//probabilities

float red_prob = 0.20;
float green_prob = 0.30;
float blue_prob = 0.50;

float num = random(1);

  if (num < blue_prob) {
    fill(255, 50, 0, 150);
  } else if (num < blue_prob + red_prob) {
    fill(50, 255, 20, 150);
  } else {
    fill(10, 100, 200, 150);
  }
    
//random rectangles + circles
  
  noStroke();
  ellipse(random(width), random(height), 100, 100);
  rect(random(width), random(height), 200, 200);
  noLoop();
 
}
}
