public void setup(){
	rectMode(CENTER);
	size(500,500);
}
public void draw(){
background(255);
myFractal(100,250,5);
myFractal(250,250,5);
myFractal(400,250,5);
stem(100,120);
stem(250,120);
stem(400,120);
for(int i=0;i<width;i+=5){
	fill(28, 153, 51);
	triangle(i,height,i+2.5,height-10,i+5,height);
}
}
public void myFractal(float x, float y, float siz){
	fill(235-siz/5, 124, 189+siz/5,50);
	ellipse(x,y+siz/10,siz,siz);
	ellipse(x-siz/10,y-siz/10,siz,siz);
	ellipse(x+siz/10,y-siz/10,siz,siz);
	if(siz<100){
		myFractal(x,y,siz*2);
	}
}
public void stem(int x, int y){
	fill(28, 153, 51);
	strokeWeight(1);
	stroke(255);
	rect(x,height,2,height-y);
}