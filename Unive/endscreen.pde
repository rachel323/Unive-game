/* 
 Endscreen is an image created in photoshop.
 */

class Endscreen {

  PImage endscreenbackground;


  Endscreen() {
    endscreenbackground = loadImage("data/img/endscreenbackground.jpeg");
  }

  void display() {
    image(endscreenbackground, 0, 0, 1920, 1080);
  }
}
