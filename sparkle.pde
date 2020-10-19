class Spark {
  int x;
  float y;
  float a = random(1, 10);
 
Spark(int posX, int posY) { // positioning
  x = posX/2;
  y = posY;
}

// sparkling ballons rise but don't leave window
void ascend(){
  while (x >=200  && y >=-355) { // window sizing & off screen movement
   y= y-0.5;
   x-=1;
  }
  x+= 1; 
}

// display sparkling balloon
void display(int xx, int a){ // passing through parameters fo x-axis placement 
    //body
   pushMatrix();
   translate(x,y);
   fill(a, a, a, 63);
   ellipse(xx, 600, 500, 550);
   popMatrix();
  }
}
