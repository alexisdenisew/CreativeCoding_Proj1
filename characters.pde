class Blob {
  int x;
  int y;
  float posX = 80;
  float setOneY = 350;
  float setTwoY = 300;
  float setThreeY = 250;
  float setFourY = 200;
  float aa = 145;
  float bb = 170;
  float cc = 195;
   
Blob(int posX, int posY) {
  x = posX/2;
  y = posY;
}

void display(){
// blob characters
   pushMatrix();
    translate(x,y);
    if (posX >= 10){
      fill(120, 45, 0);
      ellipse(370, setOneY, 350, posX); // vars allow for slow "melting" effect in the blobs
      fill(120, 45, 0);
      ellipse(300, setOneY, 350, posX);
      fill(aa, 60, 0);
      ellipse(370, setTwoY, 250, posX);
      fill(aa, 60, 0);
      ellipse(300, setTwoY, 250, posX);
      fill(bb, 68, 0);
      ellipse(370, setThreeY, 150, posX);
      fill(bb, 68, 0);
      ellipse(320, setThreeY, 150, posX);
      fill(cc, 80, 0);
      ellipse(345, setFourY, 120, posX);
      posX = posX-0.0175; // different rate of change for each blob section height 
      setTwoY = setTwoY+0.012;
      setThreeY = setThreeY+0.025;
      setFourY = setFourY+0.037;
    }
  popMatrix();

  }
}

class Star {
  int x;
  int y;
  
Star(int posX, int posY) {
  x = posX/2;
  y = posY;
}

void display(){
    //moon character for "night" scene
   pushMatrix();
    translate(x,y);
      fill(176,196,222);
      ellipse(370, 350, 500, 500);
  popMatrix();
  }
}
