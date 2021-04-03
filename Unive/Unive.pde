

int stage, gameover, youwon;
int npccount = 5;
Startscreen startscreen;
Characterscreen characterscreen;
Endscreen endscreen;
Scene1 scene1;
Scene2 scene2;
Scene3 scene3;
textBox textBox;
Button Button;
Player P1;
ProfOak ProfOak;

boolean [] keys = new boolean[65536];        //makes an array for more possible keys at the same time


void setup() {
  size(1920, 1080);

  startscreen = new Startscreen();
  characterscreen = new Characterscreen();
  endscreen = new Endscreen();
  scene1 = new Scene1();
  scene2 = new Scene2();
  scene3 = new Scene3();
  textBox = new textBox();
  Button = new Button();
  P1 = new Player();
  ProfOak = new ProfOak();


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
    
    // continue button
    Button.display();
    Button.click();
    
    if (Button.isClicked){
      stage = stage +1;
    }
  }
  
  //Third Stage - first scene of the game
  if (stage ==3 ){
    scene1.display();

    //Textbox
    textBox.display();
    textBox.click();
    textBox.update();
    textBox.showtext();

    //Player
    P1.display();
    P1.update();
    
    //professor Oak
    ProfOak.display();
    
    if (P1.OutOfScreen) {              //player switches between stages
      stage = stage + 1;
    }
  }

  if (stage == 4) {
    scene2.display();

   

    //Player
    P1.display();
    P1.update();
if (P1.OutOfScreen) {              //player switches between stages
      stage = stage + 1;
    }

  }


  if (stage == 5) {
    scene3.display();

   

    //Player
    P1.display();
    P1.update();
 if (P1.OutOfScreen) {              //player switches between stages
      stage = stage + 1;
    }
  }

//last Stage - Endscreen
  if (stage == 6) {
    endscreen.display();
  } 

}

void keyPressed() {
  
  if (stage == 1 ) {
    stage = stage + 1;
  }
}


void mouseClicked() {

  if (stage == 6) {
    link("https://www.unive.nl/");
    exit();
  }
}
