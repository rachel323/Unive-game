class textBox {
  float x, y;
  float textX;
  float textY;
  int numPressed;
  boolean isClicked;
  boolean isVisible;
  int clickCounter;

  textBox() {
    x = 1600;
    y = 900;
    textX = 800;
    textY = 900;
    numPressed = 0;
    isClicked = false;
    isVisible = false;
    clickCounter = 0;
  }


  void display() {
    if (isVisible){
    rectMode(CENTER);
    fill(200, 50, 0);
    rect(x, y, 50, 50); 
    fill(255);
    textSize(25);
    text("speak", x, y);
    }
  }

  // everytime you click within the red box you get a hint
  void click() {
    //is clicked is put on true and the clickcounter is started at 200
    if (dist(x, y, mouseX, mouseY)<50 && mousePressed) {
      isClicked = true;
      clickCounter = 10;
    }
  }

  //If it's been clicked the counter counts down from 200 to 0
  void update() {
    
    //the textbox is only visible when the player is near professor oak
    if(P1.pos.x>1300){
     isVisible = true; 
    }
    
    if (clickCounter>0) {
      clickCounter--;
      //when the clickcounter is back at 0 or when it has not been clicked at all, isclicked is false
    } else {
      isClicked = false;
    }
  }



  void showtext() {
    
   // When isclicked is correct and you have clicked less than five times (#of hints), you get a text box
    if (isClicked && numPressed < 5) {
      //the text box and text characteristics are always the same
      fill(255);
      rect(textX+200, textY, 500, 100);
      textSize(20);
      fill(0);

      //the text within the text box is differen, depending how many times you have clicked already
      //the first time you click
      if (numPressed < 1) {
        text("hello my friend", textX, textY);
      }
      //the second time you click
      else if (numPressed == 1) {
        text("dit is een voorbeeld", textX, textY);
      }
      //the third time you click
      else if (numPressed == 2) {
        text("Here's some more text", textX, textY);
      }
      //the fourth time you click
      else if (numPressed == 3) {
        text("Ik moet nog tekst bedenken",textX, textY);
      }
      //the fifth time you click
      else if (numPressed == 4) {
        text("take a personality test", textX, textY);
      }
      //When the clickcounter has counted all the way down after a click the numPressed is increased
      //This way you get a different message after every click
      if (clickCounter ==0) {
        numPressed = numPressed +1;
      }
    }
  }
}
