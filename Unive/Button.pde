class Button {
  float x, y;
  boolean isClicked;
  PImage startbutton;

  Button() {
    x = 1600;
    y = 700;
    isClicked = false;
    startbutton = loadImage("data/img/StartButton.png");
  }


  void display() {
    if (dist(x, y, mouseX, mouseY)<150){
     tint(250, 253, 190); 
    }
    imageMode(CENTER);
    image(startbutton, x, y, 292, 221);
    imageMode(CORNER);
    noTint();
  }

  // When you click is clicked turns true
  void click() {
    //is clicked is put on true and the clickcounter is started at 200
    if (dist(x, y, mouseX, mouseY)<150 && mousePressed) {
      isClicked = true;
    }
  }

  
}
