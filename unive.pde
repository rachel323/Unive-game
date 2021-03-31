int x = 300;
int y = 300;
int speed = 10;

void setup(){
  size(1200,800);
}

void draw(){
  background(125);
  rect(x,y, 150,150);
}

void keyPressed(){
  if (key == 'a'){
    x=x-speed;
  } else if (key == 'd'){
    x=x+speed;
  } else if (key == 'w'){
    y=y-speed;
  } else if (key == 's'){
    y=y+speed;
  }
}
