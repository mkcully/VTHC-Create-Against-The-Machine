
/**
* Written and tested for Processing 4.3.4
*
*/

import processing.sound.*;
import gifAnimation.*;

// Music and sound effects
SoundFile music;

// Background images
PImage backgroundImg;
Gif loadingImg;

// Font
PFont font;

// Initialise classes to be used in the program
GameState game;


void setup(){
  size(1024,768);
  
  // Load music files from /data
  music = new SoundFile(this, "pulsar.mp3");
  music.loop();
  
  // Load images
  backgroundImg = loadImage("data/Windows_Screen.png");
  loadingImg = new Gif(this, "loading-anim.gif");
  loadingImg.play();
  
  // Load font
  font = createFont("data/Pixelbasel.ttf",128);
  textFont(font);
  
  game = new GameState();
  game.initialiseNewGame();
  
}

void draw(){
  drawBackground();
  game.update();
}

void drawBackground(){
  imageMode(CENTER);
  image(backgroundImg,width/2,height/2);

}

void keyPressed(){
}
