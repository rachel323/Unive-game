/* 
 character screen offers the options to personalise a character
 */

class Characterscreen {
  float x, y;
  PImage characterscreenbackground;
  PImage startscreentext;
  boolean characterSet;

  Characterscreen(boolean characterSet) {
    characterscreenbackground = loadImage("data/img/characterscreenbackground.png");
    x = 1600;
    y = 900;
    characterSet = false;
  }

  void display() {
    image(characterscreenbackground, 0, 0, 1920, 1080);
    fill (255);
    rectMode(CENTER);
    rect(x, y, 300,100);
    fill(0);
    textSize(25);
    text("Ready", x, y);
  }
  
  void click(){
   if (dist(x, y, mouseX, mouseY)<100 && mousePressed) {
    characterSet = true; 
   }
  }
  
}
