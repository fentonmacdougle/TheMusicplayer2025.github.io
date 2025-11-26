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
String folder = "DependanciesFolder/Images/";
String whatsappfragrance = "whatsappfragrance";
String fileExtensionJPG = ".jpg";
String imagePathway1 = upArrow + folder + whatsappfragrance + fileExtensionJPG;

PImage image1 = loadImage( imagePathway1 );
int imageWidth1 = 860;
int imageHeight1 = 529;

float image1AspectRatio_GreaterOne = ( imageWidth1 >= imageHeight1 ) ? float(imageWidth1)/float(imageHeight1) : float(imageHeight1)/float(imageWidth1) ;
println("Testing for Decimals, formula unsing ints:", imageWidth1/imageHeight1);
println("After casting added, Aspect Ratio >1:", image1AspectRatio_GreaterOne);
float imageWidthAdjusted1 = imageDivWidth;
float imageHeightAdjusted = ( imageWidth1 >= imageDivWidth ) ? imageWidthAdjusted1 / image1AspectRatio_GreaterOne : imageWidthAdjusted1 * image1AspectRatio_GreaterOne;

rect(imageDivX, imageDivY, imageDivWidth, imageDivHeight);
image( image1, imageDivX, imageDivY, imageDivWidth, imageDivHeight );
