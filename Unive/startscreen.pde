/* 
 Startscreen is an image created in photoshop.
 */

class Startscreen {

  PImage startscreenbackground;
  PImage startscreentext;


  Startscreen() {
    startscreenbackground = loadImage("data/img/uni'vo.png");

  }

  void display() {
    image(startscreenbackground, 0, 0, 1920, 1080);
  }
}
