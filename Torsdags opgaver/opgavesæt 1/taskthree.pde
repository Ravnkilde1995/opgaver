color red = color(255,0,0);
color yellow = color(232,255,0);
color green = color(0,255,0);
color grey = color (141,142,132);
int count = 0;

void setup(){
 frameRate(1);
 size (600,600);
 rectMode(CENTER);
 ellipseMode(CENTER);
 background(255);

 
 stroke(0);
 fill(255);
 rect(300,300,110,350);
 fill(0);
 rect(300,300,90,290);
 
 stroke(0);
 fill(grey);
 ellipse(300,205,90,90);
 fill(grey);
 ellipse(300,300,90,90);
 fill(grey);
 ellipse(300,395,90,90);
 
  
}
void draw(){
  if (count == 1){
    fill(red);
    ellipse(300,205,90,90);
  }
  else if(count == 2){
    fill(yellow);
    ellipse(300,300,90,90);
  }
  else if (count == 3){
    fill(green);
    ellipse(300,395,90,90);
  }
  else if (count == 6){
    count =0;
  }
  if (count == 0){
    fill(grey);
    ellipse(300,205,90,90);
    ellipse(300,300,90,90);
    ellipse(300,395,90,90);
  }
      count++;

}
    
