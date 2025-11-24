/* Aspect Ratio: Bike Only Demonstration - Old Man */
//Display
fullScreen(); //Landscape
size(500, 700); //Portrait
int appWidth = displayWidth; //width
int appHeight = displayHeight; //height
println("\n\t\t\t\t\t\t\tDisplay VARS:", "appWidth:"+appWidth, "appHeight:"+appHeight, "\n\t\t\t\t\t\t\tFullScreen, displayWidth:"+displayWidth, "displayHeight:"+displayHeight, "\n\t\t\t\t\t\t\tWidth:"+width, "Height:"+height);

float imageDivX = appWidth * 1/4;
float imageDivY = appHeight * 1/10;
float imageDivWidth = appWidth * 1/2;
float imageDivHeight = appHeight * 4/5;

String upArrow = "../../";
String folder = "TheMusicplayer2025.github.io/Images/";
String whatsappfragrance = "whatsappfragrance";
String fileExtensionJPG = ".jpg";
String imagePathway1 = upArrow + folder + whatsappfragrance + fileExtensionJPG;

PImage image1 = loadImage(imagePathway1);
int imageWidth1 = 860;
int imageHeight1 = 529;


rect(imageDivX, imageDivY, imageDivWidth, imageDivHeight);
