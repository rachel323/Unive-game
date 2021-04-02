class textBox {
  float x, y;
  int numPressed;
  boolean isClicked;
  int clickCounter;

  textBox() {
    x = 1600;
    y = 900;
    numPressed = 0;
    isClicked = false;
    clickCounter = 0;
  }


  void display() {
    rectMode(CENTER);
    fill(200, 50, 0);
    rect(x, y, 50, 50); 
    fill(255);
    textSize(25);
    text("?", x, y);
  }

  // everytime you click within the red box you get a hint
  void click() {
    //is clicked is put on true and the clickcounter is started at 200
    if (dist(x, y, mouseX, mouseY)<50 && mousePressed) {
      isClicked = true;
      clickCounter = 200;
    }
  }

  //If it's been clicked the counter counts down from 200 to 0
  void update() {
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
      rect(800, 400, 400, 100);
      textSize(20);
      fill(0);

      //the text within the text box is differen, depending how many times you have clicked already
      //the first time you click
      if (numPressed < 1) {
        text("You win if you can get out of the screen", 800, 400);
      }
      //the second time you click
      else if (numPressed == 1) {
        text("Just jump a bit higher over the obstacle", 800, 400);
      }
      //the third time you click
      else if (numPressed == 2) {
        text("If only you could get rid of the dog", 800, 400);
      }
      //the fourth time you click
      else if (numPressed == 3) {
        text("Maybe the dog will run after a ball", 800, 400);
      }
      //the fifth time you click
      else if (numPressed == 4) {
        text("Don't start comparing apples with balls", 800, 400);
      }
      //When the clickcounter has counted all the way down after a click the numPressed is increased
      //This way you get a different message after every click
      if (clickCounter ==0) {
        numPressed = numPressed +1;
      }
    }
  }
}
