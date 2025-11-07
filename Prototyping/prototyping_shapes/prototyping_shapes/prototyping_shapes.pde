fullScreen();
int appWidth = displayWidth;
int appHeight = displayHeight;

float imageX = appWidth * 1/4;
float imageY = appHeight * 1/1.3;
float imageWidth = appWidth * 1/15;
float imageHeight = appHeight * 1/9;

float image2X = appWidth * 1/5.5;
float image2Y = appHeight * 1/1.3;
float image2Width = appWidth * 1/15;
float image2Height = appHeight * 1/9; 

float image3X = appWidth * 1/3.14;
float image3Y = appHeight * 1/1.3;
float image3Width = appWidth * 1/15;
float image3Height = appHeight * 1/9;

float image4x = image3X * 1/0.96;
float image4y = image3Y * 1/0.97;
float image4width = image3Width * 1/6.3;
float image4height = image3Height * 1/1.85;

  // Draw the rectangles
  rect(imageX, imageY, imageWidth, imageHeight);
  rect(image2X, image2Y, image2Width, image2Height);
  rect(image3X, image3Y, image3Width, image3Height);
  rect(image4x, image4y, image4width, image4height);

  // Draw the first triangle inside image2
  float triangleX1 = imageX + imageWidth / 4; // Left corner of the triangle
  float triangleY1 = imageY + imageHeight / 4; // Top corner of the triangle
  float triangleX2 = imageX + imageWidth / 4; // Bottom-left corner of the triangle
  float triangleY2 = imageY + 3 * imageHeight / 4;
  float triangleX3 = imageX + 3 * imageWidth / 4; // Right corner of the triangle
  float triangleY3 = imageY + imageHeight / 2;

  triangle(triangleX1, triangleY1, triangleX2, triangleY2, triangleX3, triangleY3);

  // Draw the second triangle inside image3
  float triangleX4 = image3X + image3Width / 2; // Left corner of the triangle
  float triangleY4 = image3Y + image3Height / 4; // Top corner of the triangle
  float triangleX5 = image3X + image3Width / 2; // Bottom-left corner of the triangle
  float triangleY5 = image3Y + 3 * image3Height / 4;
  float triangleX6 = image3X + 3 * image3Width / 4; // Right corner of the triangle
  float triangleY6 = image3Y + image3Height / 2;

  triangle(triangleX4, triangleY4, triangleX5, triangleY5, triangleX6, triangleY6);
