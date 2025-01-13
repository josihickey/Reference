void setup(){
size(400,400);
}

draw = function() {
background(254, 238, 240);
strokeWeight(1);

//ellipse
fill(255,0,0,100);
ellipse(125,125,200,200);

fill(0,0,0);
text("ellipse(x, y, width, height);", 57, 125);

//rectangle
fill(255,0,0,100)
rect(150,250,200,100);
fill(0,0,0);
text("rect(x, y, width, height);", 190, 300);

//triangle
fill(255, 0, 0, 100);
triangle(275,50,375,110, 250, 235);
fill(0,0,0);
text("triangle(x, y, x2, y2, x3, y3);",235, 45);

//line
fill(0,0,0);
text("line(x,y,x2,y2);",15, 315);
strokeWeight(2);
line(10, 317,100,317 )

//text
text("text('Text goes here (in real quotation marks)', x, y)", 6, 244);

}