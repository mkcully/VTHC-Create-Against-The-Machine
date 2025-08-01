class GameState {
  int state; // 0 = menu, 1 = playing, 2 = level complete 
  int evilScore;
  int goodScore;
  int level;
  boolean levelComplete;
  boolean gameOver;
  
  void initialiseNewGame() {
    state = 0;
    evilScore = 0;
    goodScore = 0;
    level = 1;
    gameOver = false;
  }
  
  void drawMainMenu(){
    // Draw the game title
    textAlign(CENTER);
    textSize(64);
    fill(255);
    text("disrupt the system!", width/2, 200);
    
    // Load image
    image(loadingImg, width/2, 500);
  
  }
  
  void drawLevel(){
    fill(255);
    textSize(32);
    textAlign(RIGHT);
    text("Level: " + level, 20, 40);
    text("Scores: " + goodScore, width-50, 80);
    text(goodScore, width-50, 80);
  }
  
  void drawLevelComplete(){
  }
  
  void drawGameOver(){
    textAlign(CENTER);
    textSize(64);
    fill(255);
    text("Game Over", width/2,100);
   
    fill(150);
    rect(300,600,400,80);
    fill(255);
    textSize(32);
    text("Main Menu", width/2, 650);
    
    if (goodScore>evilScore){
      text("You win.", width/2, 800);
    } else {
      text("You lose.", width/2, 800); 
    }
  }
  
  void update(){
    if (state == 0){
      drawMainMenu();
    } else if (state == 1){
      drawLevel();
    } else if (state == 2){
      drawLevelComplete();
    } else if (state == 3){
      drawGameOver();
    }
  
  }
 
}
