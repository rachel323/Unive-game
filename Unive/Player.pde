/* 
 This is a class that creates the player.
 */

class Player {

  float x, y, speed, L, updown, legSpeed;
  color bodyColor;

  Player() {
    rectMode(CENTER);

    x = 210;
    y = 800;
    speed = 10;
    L = 0;
    updown = 1;
    legSpeed = 0.5;

    endscreen = new Endscreen();

    bodyColor = color(15, 165, 255);
  }


  void display() {
    footstep();
    noStroke();
    fill(bodyColor);

    //player

    //body
    rect(x, y, 30, 50);

    //head
    ellipse(x, y-42, 30, 30);

    //left arm
    arc(x-16, y-16, 16, 16, PI, PI+HALF_PI);
    rect(x-20, y-4, 8, 30);
    arc(x-20, y+11, 8, 10, 0, PI);

    //right arm
    arc(x+16, y-16, 16, 16, PI+HALF_PI, TWO_PI);
    rect(x+20, y-4, 8, 30);
    arc(x+20, y+11, 8, 10, 0, PI);

    //left leg
    arc(x-10, y+(35 + L), 10, 10, PI, 2*PI);
    rect(x-10, y+(35 + L), 10, 40);
    arc(x-10, y+(55 + L), 10, 10, 0, PI);

    //right leg
    arc(x+10, y+(35 - L), 10, 10, PI, 2*PI);
    rect(x+10, y+(35 - L), 10, 40);
    arc(x+10, y+(55 - L), 10, 10, 0, PI);
  }

  void footstep() {

    if (keys ['a'] || keys ['s'] || keys ['d'] || keys ['w']) {
      L = L + (legSpeed * updown);
      if (L == 5 || L == -5) {                                          //when L reaches the maximum (5) or the minimum (-5) it changes form going up to down or down to up
        updown *= -1;
      }
    } else
      L = 0;
  }

  void move() {
    if (stage == 2) {                                //movement scene 1 (stage 2)
      if (keys ['a'] && x > 15)
        x = x - speed;
      if (keys ['d'] && x <= width)
        x = x + speed;
      if (keys ['w'] && y > 160)
        y = y - speed;
      if (keys ['s'] && y < height-70)
        y = y + speed;
      if (keys [' ']) {
      } else {
        speed = 1;
      }
    }

    if (stage == 3) {                                //movement scene 2 (stage 3)
      if (keys ['a'] && x >= 0)
        x = x - speed;
      if (keys ['d'] && x <= width)
        x = x + speed;
      if (keys ['w'] && y > 160)
        y = y - speed;
      if (keys ['s'] && y <= height - 160)
        y = y + speed;
      if (keys [' ']) {
      } else {
        speed = 1;
      }
    }

    if (stage == 4) {                                //movement scene 3 (stage 4)
      if (keys ['a'] && x >= 0)
        x = x - speed;
      if (keys ['d'] && x <= width - 15)
        x = x + speed;
      if (keys ['w'] && y > 180)
        y = y - speed;
      if (keys ['s'] && y <= height - 70)
        y = y + speed;
      if (keys [' ']) {
      } else {
        speed = 1;
      }
    }
  }


  float posX() {
    return x;
  }

  float posY() {
    return y;
  }


  void walkPressed(int selectedKey) {
    keys[selectedKey] = true;
  }

  void walkReleased(int selectedKey) {
    keys[selectedKey] = false;
  }
}
