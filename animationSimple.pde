void setup() {
size(400,400);
}

var moveX=480;
var moveY=-90;
var sizeX= 100;
var sizeY=30;
var catY=385;
var speedX=1;
var catTrans=400;
var speedC=1;


draw = function() {
background(254, 238, 240);


//background
strokeWeight(1);
fill(40,80,62);
rect(0,385,400,15)

//UFO body
fill(220,220,220);
ellipse(moveX,moveY,sizeX,sizeY);
ellipse(moveX,moveY-45,sizeX-80,sizeY-50);

//cat
fill(0,0,0, catTrans);
ellipse(200,catY,20,30);
ellipse(200,catY-20,15,15);
triangle(192,catY-23,199,catY-25,195,catY-30);
triangle(208,catY-23,200,catY-25,205,catY-30);
fill(0,0,0,0);
strokeWeight(3);
arc(201,catY+6,30, 15, radians(270), radians(440));

strokeWeight(1);

moveX -=speedX;
moveY +=speedX;
sizeX+=0.5;
sizeY+=0.5;

if (moveX==200 && speedX == 1){
console.log("i am here1");
  moveX+=1;
  moveY-=1;
  
  //light
  fill(255, 251, 166,100)
  triangle(200,200,150,400,250,400);
  fill(220,220,220);
  ellipse(moveX,moveY,sizeX,sizeY);
  ellipse(moveX,moveY-45,sizeX-80,sizeY-50);
  
  //cat abduction
  catY-=speedC;
  
}

if(sizeX==200){
sizeX-=0.5;
sizeY-=0.5;
}

if (catY==200){
console.log("i am here2");
  speedC=+1;
  //light
  fill(254, 238, 240);
  stroke(254, 238, 240);
  triangle(200,200,150,400,250,400);
  ellipse(200,200,65,65);
  


//cat needs to leave
catTrans-=400;


fill(254, 238, 240, catTrans);
ellipse(moveX,catY,20,30);
ellipse(moveX,catY-20,15,15);
fill(0,0,0,catTrans);
triangle(moveX,catY-23,moveX,catY-25,moveX,catY-30);
triangle(moveX,catY-23,moveX,catY-25,moveX,catY-30);
fill(0, 0, 0, catTrans);
strokeWeight(0);
stroke(0,0,0,catTrans)
arc(moveX,catY+6,30, 15, radians(270), radians(440));
  
 console.log("I am here2.5") 
  strokeWeight(1);
  stroke(0,0,0);
  fill(220,220,220);
  ellipse(moveX,moveY,sizeX,sizeY);
  ellipse(moveX,moveY-45,sizeX-80,sizeY-50);
  
  
  
  speedX=-1;
  speedC=-1;
  console.log("i am here3");
  
  //background
fill(40,80,62);
rect(0,385,400,15)
  
  

};



}