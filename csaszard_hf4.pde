void setup(){
  size(500,500);
}

//valtozok
Boolean lightOn=false;
int buttonX=30; int buttonY=450;
int buttonSize=18;
int lightColorSwitch=1; //0-kek,1-feher,2-sarga

int buttonBlueX=30; int buttonBlueY=400;
int buttonOrangeX=30; int buttonOrangeY=380;
int buttonYellowX=30; int buttonYellowY=360;

void draw() {

  background(0,0,0);

  //kapcsolok
  fill(255,255,255);
  ellipseMode(CENTER);
  ellipse(buttonX,buttonY,buttonSize,buttonSize);
  fill(0,0,255);
  rectMode(CENTER);
  rect(buttonBlueX,buttonBlueY,buttonSize,buttonSize);
  fill(255,128,0);
  rect(buttonOrangeX,buttonOrangeY,buttonSize,buttonSize);
  fill(255,255,0);
  rect(buttonYellowX,buttonYellowY,buttonSize,buttonSize);
  
  //lampakapcsolas
  //if(mousePressed && dist(mouseX,mouseY,buttonX,buttonY)<buttonSize){
  //  lightOn=true;
  //}
  if(lightOn){
    fill(255,255,255);
    triangle(-50,-50,1000,350,350,1000);
  }
  
  //szinvalasztas
  if(lightOn && (mouseX>buttonOrangeX-buttonSize/2) && (mouseX<buttonOrangeX+buttonSize/2) && (mouseY>buttonOrangeY-buttonSize/2) && (mouseY<buttonOrangeY+buttonSize/2)){
    //lightColorSwitch=1;
    fill(255,128,0);
    triangle(-50,-50,1000,350,350,1000);
  }
  if(lightOn && (mouseX>buttonBlueX-buttonSize/2) && (mouseX<buttonBlueX+buttonSize/2) && (mouseY>buttonBlueY-buttonSize/2) && (mouseY<buttonBlueY+buttonSize/2)){
    //lightColorSwitch=0;
    fill(0,0,255);
    triangle(-50,-50,1000,350,350,1000);
  }
  if(lightOn && (mouseX>buttonYellowX-buttonSize/2) && (mouseX<buttonYellowX+buttonSize/2) && (mouseY>buttonYellowY-buttonSize/2) && (mouseY<buttonYellowY+buttonSize/2)){
    //lightColorSwitch=2;
    fill(255,255,0);
    triangle(-50,-50,1000,350,350,1000);
  } 

}

void mouseClicked(){
  if(dist(mouseX,mouseY,buttonX,buttonY)<buttonSize){
    lightOn=!lightOn;   
  }
}