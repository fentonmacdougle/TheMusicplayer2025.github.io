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
  String soundEffect1 = "sounds/"; //Developer Specific
  String playList = "songs/"; //Developer Specific
  String songName1 = "ping-pong-classic-arcade-game-116818";
  String soundEffect1 = "Wood_Door_Open_and_Close_Series";
  String fileExtension_mp3 = ".mp3";
  //
  String musicDirectory = upArrow + playList; //Concatenation
  String soundDirectory = upArrow + soundFolder; //Concatenation
  String file = musicDirectory + songName1 + fileExtension_mp3;
  playList[currentSong] = minim.loadFile(file)
  String file = soundDirectory + soundEffect1 + fileExtension_mp3;
  sounds[currentSong] = minim.loadFile(file);
  //
  //Thrown by commenting out FILE, playList[] or soundEffects[]
  if (playList[currentSong]==null || soundFolder[currentSong]==null)
    //See FILE or minim.loadFile
    println("The Play List or Sound Effects did not load properly");
  printArray(playList);
  printArray(soundFolder);
  //
  //soundFolder[currentsong].play();
  playList[currentsong].play();
  ;
  ;
  //
} //End setup
//
void draw() {
  playList[currentsong].play();
} //End draw
//
void mousePressed() {
} //End Mouse Pressed
//
void keyPressed() {
} //End Key Pressed
//
