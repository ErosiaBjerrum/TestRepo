// Global scope
String userAddress = "Blommehaven 8";
int num1 = 50+12*6;
int num2 = 15-2+8;
int sumAdd;
float sumDiv;
String userMessage = "Hej bruger!";


void setup() {

  sumAdd = num1 + num2;
  sumDiv = (float) num1 / num2;

}

void draw() {

  num1 = num1 - 1;
  num2 = num2 - 1;
  
  sumAdd = num1 + num2;
  sumDiv = (float) num1 / num2;

  // To print
  println(userMessage);
  println("Her bor du: "+userAddress);
  println("Summen af de to tal er: "+sumAdd);
  println("Divisionen af de to tal er: "+sumDiv);
  println("Test med addition: "+sumAdd);
  println("Test med division: "+sumDiv);
  
  // Stop loop after 120 iterations to not overwhelm the console
  if (frameCount > 120) {
    noLoop();
  }
}
