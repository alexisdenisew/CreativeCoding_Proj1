Blob jenna; 
Blob jess;
Blob juju;
Star stella;
Spark spark;
atmos world;
float rColor = 255;
float gColor = 255;
float bColor = 255;
boolean set = true; 
boolean turnOn = false;
float skyR = 220; 
float skyG = 220;
float skyB = 220;
float grassR = 141; 
float grassG = 216; 
float grassB = 141; 
boolean colSwitch = true;
float col = 255;
boolean run = true;
int starter;

void setup(){ // setting the canvas scene
  size(800, 800);
  // new instances of each class
  jenna = new Blob(100,400);
  jess = new Blob(500,1200);
  juju = new Blob(3500,1200);
  stella = new Star(4000,-50);
  world = new atmos(800,800);
  spark = new Spark(800, 800);
  
  
}



void draw(){
   background(255);
  // slow changing skyline 
   fill(skyR, skyG, skyB);
   noStroke();
   rect(0, 0, 800, 435);
   fill(grassR, grassG, grassB);
   if(grassG > 0){
     if(set == true){
       grassR -= 0.125;
       grassB -= 0.125;
       set = false;
       } else {
        grassG -= 0.100;
        set = true;
      }
   } if (skyB <= 0){
     turnOn = true;
   }
   // slow changing grass to match
   noStroke();
   rect(0, 435, 800, 365);
   if(skyR > 0){
     skyR -= 0.125;
     skyG -= 0.0625; 
   } if (skyR == 0){
     skyG -= 0.125; 
   skyB -= 0.0625;
   }
   
   scale(1, 1);
   // larger blob and two smaller blobs placement 
   jenna.display();
   scale(0.3);
   jess.display();
   juju.display();
   if (turnOn == true){
     stella.display();
     colSwitch = false;
     run = false;
   }
   // rain class
   world.display(run);
   if (colSwitch==true){
     // allows varrying grays for the clouds ("thunder") 
     col = random(155,255);
   } else {
     // night scene clouds 
     col = 55;
   }
   // cload placement 
   noStroke();
   fill(col, col, col);
   ellipse(10,50,500,550);
   noStroke();
   fill(col, col, col);
   ellipse(1000,10,325,350);
   noStroke();
   fill(col, col, col);
   ellipse(700,50,500,500);
   noStroke();
   fill(col, col, col);
   ellipse(750,50,425,450);
   noStroke();
   fill(col, col, col);
   ellipse(800,50,450,450);
   noStroke();
   fill(col, col, col);
   ellipse(850,50,600,650);
   noStroke();
   fill(col, col, col);
   ellipse(2000,40,400,400);
   noStroke();
   fill(col, col, col);
   ellipse(500,60,300,350);
   noStroke();
   fill(col, col, col);
   ellipse(1100,50,350,400);
   noStroke();
   fill(col, col, col);
   ellipse(2200,70,450,460);
   noStroke();
   fill(col, col, col);
   ellipse(180,7,400,450);
   noStroke();
   fill(col, col, col);
   ellipse(1500,22,500,500);
   noStroke();
   fill(col, col, col);
   ellipse(400,35,375,400);
   noStroke();
   fill(col, col, col);
   ellipse(2200,55,505,500);
   noStroke();
   fill(col, col, col);
   ellipse(2000,25,375,400);
   noStroke();
   fill(col, col, col);
   ellipse(2500,35,400,400);
   noStroke();
   fill(col, col, col);
   ellipse(2300,65,450,500);
   noStroke();
   fill(col, col, col);
   ellipse(1800,35,375,400);
   noStroke();
   fill(col, col, col);
   ellipse(2600,65,375,400);
   if (grassG >= 0){
     //sparkle ballons rise on screene
     spark.display(2000, 255);
     spark.ascend();
     spark.display(1300, 255);
     spark.ascend();
     spark.display(700, 255);
     spark.ascend();
     spark.display(100, 255);
     spark.ascend();
     starter += 1; 
   }
   
}


// balloons flash on mouse press 
void mousePressed() {
    spark.display(2000, 0);
    spark.display(1300, 0);
    spark.display(700, 0);
    spark.display(100, 0);
  }
