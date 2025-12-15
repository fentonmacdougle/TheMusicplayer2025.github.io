fullScreen();
//size(500, 100);
int appWidth = displayWidth;
int appHeight = displayHeight;
//Population
float stringDivX = appWidth*1/4;
float stringDivY = appHeight*1/2;
float stringDivWidth = appWidth*1/2;
float stringDivHeight = appHeight*1/5;
//
//Strings, Text, Literal
String title = "lowkey!!";
//
/*Fonts from OS
 println("Start of Console"); //ERROR: in case CONSOLE Memory not enough
 String[] fontList = PFont.list(); //To list all fonts available on system
 printArray(fontList); //For listing all possible fonts to choose, then createFont
 //Spelling Counts and must compare CONSOLE v Tools / Create Font / Create Font Spelling
 //Tools / Create Font / Find Font / Do Not Press "OK", known conflict between loadFont() and createFont()
 */
float fontSize = appHeight;
PFont titleFont;
String calibri48 = "calibri-48";
titleFont = createFont(calibri48,fontSize);
//
float fontSizecalibri48 = 70.0;
float calibri48AspectRatio = fontSizecalibri48 / stringDivHeight;
fontSize = stringDivHeight*calibri48AspectRatio;
//
rect( stringDivX, stringDivY, stringDivWidth, stringDivHeight );
//
color purpleInk = #B70000;
color whiteInk = #FFFFFF;
color resetInk = whiteInk;
fill(purpleInk); //Ink, hexidecimal copied from Color Selector
textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
//Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
textFont(titleFont, fontSize); //see variable note
float constantDecrease = 0.99;
int iWhile=0;
while ( textWidth( title ) > stringDivWidth ) {
  iWhile++;
  //ERROR: infinite loop, requires exit() & println()
  fontSize *= constantDecrease;
  textFont(titleFont, fontSize);
} //End WHILE Error Check Text-wrap
println("Iterations of WHILE:", iWhile, "\tPixel difference of divWidth & textWidth:", stringDivWidth-textWidth( title ), "\tUsing", constantDecrease*100+"%" );
text( title, stringDivX, stringDivY, stringDivWidth, stringDivHeight );
fill(resetInk);
//
//End Program
