/* 
 character screen offers the options to personalise a character
 */

class Characterscreen {
  PImage characterscreenbackground;
  PImage purplebox;
  PImage text;

  Characterscreen() {
    characterscreenbackground = loadImage("data/img/characterscreenbackground.png");
    purplebox = loadImage("data/img/characterPersonalise.png");
    text = loadImage("data/img/textPersonalise.png");
  }

  void display() {
    image(characterscreenbackground, 0, 0, 1920, 1080);
    tint(255, 200);  //display at 70 percent ttransparency
    image(purplebox, 250, 180, 810, 540);
    noTint();
    image(text, 350, 220, 585, 48);
  }
  
}
