float speed = random(7, 9);
int start = 0;
int pos = -800;
float xy = random(-400, 2250);
float yx = random(1000, 1850);

class atmos {
  int x;
  int y;
  int posX = 80;
   
atmos(int posX, int posY) { // positioning
  x = posX/2;
  y = posY;
}

void display(boolean run){
    //body
   pushMatrix();
    translate(x,y);
    if (pos <= yx){ // making sure rain is unseen during "night" sequence
      if (run == true){
        fill(0, 74, 159);
      } else {
        fill(0, 0, 0);
      }
      rect(xy, pos, 3, 50); // varying speed of droplets 
      pos+=speed;
    } else {
      pos = -800;
      xy = random(-400, 2250);
      yx = random(1000, 1850);
      speed = random(7, 9);
    }

  popMatrix();
  }
}
