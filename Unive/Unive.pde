

int stage, gameover, youwon;
int npccount = 5;
Startscreen startscreen;
Characterscreen characterscreen;
Endscreen endscreen;
Scene1 scene1;
Scene2 scene2;
Scene3 scene3;
textBox textBox;
Player P1;

boolean [] keys = new boolean[65536];        //makes an array for more possible keys at the same time


void setup() {
  size(1920, 1080);

  startscreen = new Startscreen();
  characterscreen = new Characterscreen();
  scene1 = new Scene1();
  scene2 = new Scene2();
  scene3 = new Scene3();
  textBox = new textBox();
  P1 = new Player();


  stage = 1;
  gameover = 13;
  youwon = 100;
}


void draw() {

  //First Stage - Startscreen
  if (stage == 1) {
    startscreen.display();
  } 

  //Second Stage - The character making
  if (stage == 2) {  
    characterscreen.display();
    if (characterSet){
      stage = stage +1;
    }
  }
  
  //Third Stafe - first scene of the game
  if (stage ==3 ){
    scene1.display();

    //Textbox
    textBox.display();
    textBox.click();
    textBox.update();
    textBox.showtext();

    //Player
    P1.display();
    P1.move();


    if (P1.x >= width - 1) {              //player switches between stages
      stage = stage + 1;
      P1.x = 3;
    }
  }

  if (stage == 4) {
    scene2.display();

   

    //Player
    P1.display();
    P1.move();


    if (P1.x <= 1) {                      //player switches between stages
      stage = stage - 1;
      P1.x = width - 3;
    }

    if (P1.x > width - 1) {               //player switches between stages
      stage = stage + 1;
      P1.x = 3;
    }
  }


  if (stage == 5) {
    scene3.display();

   

    //Player
    P1.display();
    P1.move();



    if (P1.x <= 1) {              //player switches between stages
      stage = stage - 1;
      P1.x = width - 3;
    }
  }

  //Final Stage - Endscreen
  if (stage == gameover) {
    endscreen.gameover();
  }

  if (stage == youwon) {
    endscreen.youwon();
  }
}

void keyPressed() {
  P1.walkPressed(key);
  
  if (stage == 1) {
    stage = stage + 1;
  }
}

void keyReleased() {
  P1.walkReleased(key);
}

void mouseClicked() {
  scene2.posterClick(mouseX, mouseY);

  if (stage == gameover || stage == youwon) {
    link("https://www.unive.nl/");
    exit();
  }
}

void mouseReleased() {
  scene2.posteRelease();
}
