/* hearing music
 - reading code with CTRL + T */
//reminder, activate library
//
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//global variables
Minim minim;
int numberOfSongs = 2;
int numberOfSoundEffects = 1;
AudioPlayer[] list = new AudioPlayer[ numberOfSongs ];
AudioPlayer[] sounds = new AudioPlayer[ numberOfSoundEffects];
int currentSong = numberOfSongs - numberOfSongs;
//
void setup() {
  size(700, 500); //width //height
  //fullScreen(); //displayWidth //displayHeight
  int appWidth = width; //Best Practice
  int appHeight = height;
  minim = new Minim(this); //Manditory
  String upArrow = "../../";
  String musicFolder = "Music/"; //Developer Specific
  String soundEffectsFolder = "sounds/"; //Developer Specific
  String normalFolder = "songs/"; //Developer Specific
  String songName1 = "ping-pong-classic-arcade-game-116818";
  String soundEffect1 = "Wood_Door_Open_and_Close_Series";
  String fileExtension_mp3 = ".mp3";
  //
  String musicDirectory = upArrow + musicFolder + normalFolder; //Concatenation
  String soundEffectsDirectory = upArrow + musicFolder + soundEffectsFolder; //Concatenation
  String file = musicDirectory + songName1 + fileExtension_mp3;
  playList[ currentSong ] = minim.loadFile( file );
  file = soundEffectsDirectory + soundEffect1 + fileExtension_mp3;
  soundEffects[currentSong] = minim.loadFile( file );
} //End setup
//
void draw() {
} //End draw
//
void mousePressed() {
} //End Mouse Pressed
//
void keyPressed() {
} //End Key Pressed
//
