/* 
 professor oak is the character in the first scene
 */

class ProfOak {
  PImage professorOak;


  ProfOak() {
    professorOak = loadImage("data/img/ProfessorOak.png");
  }

  void display() {
    image(professorOak, 1500, 300, 420, 430);
  }
}
