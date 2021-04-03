/* 
 This is a class that creates the player.
 */


class Player {
  PImage character;
  float Xspeed;
  PVector pos = new PVector (600, 450);
  PVector vel = new PVector (0, 0);
  PVector acc = new PVector (0, 0);
  boolean OutOfScreen;


  Player() {
    character = loadImage("data/img/Character.png");
    OutOfScreen = false;
  }

  void display() {

    pos.add(vel);
    vel.add(acc);

    rectMode(CORNER);
    image(character, pos.x, pos.y, 165, 389); 
    Xspeed = 20;
  }


  void update() {


    //when you're out of screen
    if (pos.x > 1550) {
      OutOfScreen = true;
      pos.x = 200;
    }

    //this part controls the movement
    if ((keyPressed)) {


      //go to the left as long as purpleman's position is on the right of x=100
      if (keyCode == LEFT) {
        if (pos.x>100) {
          pos.x = pos.x - Xspeed;
        }
      }

      //go to the right
      if (keyCode == RIGHT) {
        pos.x = pos.x + Xspeed;
      }
    }

  }
}
