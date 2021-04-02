/* 
 Endscreen is an image created in photoshop.
 */

class Endscreen {

  PImage endscreenbackground;
  PImage endscreengameover;
  PImage endscreenyouwon;


  Endscreen() {
    endscreenbackground = loadImage("data/img/startscreenbackground.png");
    endscreengameover = loadImage("data/img/endscreengameover.png");
    endscreenyouwon = loadImage("data/img/endscreenyouwon.png");

  }

  void gameover() {                                    //gameover screen design
    image(endscreenbackground, 0, 0, 1000, 750);
    image(endscreengameover, 0, 0, 1000, 750);
  }

  void youwon() {                                      //you won screen design
    image(endscreenbackground, 0, 0, 1000, 750);
    image(endscreenyouwon, 0, 0, 1000, 750);
  }
}
