//🟢setup Function - will run once
setup = function() {
    size(600, 400);
    background(255, 255, 255, 0);
    
    drawFish(200, 200, color(247, 0, 227)); 
    drawFish(300, 350, color(8, 247, 0));
    drawFish(400, 300, color(243, 247, 0));
    drawFish(500, 250, color(247, 0, 4));
    drawFish(100, 250, color(0, 247, 235)); 
    drawBubble(200, 100);
    drawBubble(200, 150);
    drawBubble(250, 130);
    drawSeaweed(100, 350, 100); // Custom function #3: Seaweed
};

//🟢draw Function - will run on repeat
draw = function(){
};

//🟢mouseClicked Function - will run when mouse is clicked
mouseClicked = function(){
  var randomFishX = mouseX;
  var randomFishY = mouseY;
  var randomFishColor = color(random(255), random(255), random(255)); // Random fish color
  
  drawFish(randomFishX, randomFishY, randomFishColor);
  
  var randomBubbleX = mouseX;
  var randomBubbleY = mouseY;
  drawBubble(randomBubbleX, randomBubbleY);
}

//🟡drawFish Function - will run when called
var drawFish = function(fishX, fishY, fishColor){
  textSize(80);
  fill(fishColor);
  text("𓆝", fishX, fishY);
};

//🟡drawBubble Function - will run when called
var drawBubble = function(bubbleX, bubbleY){
  textSize(20);
  text("⚪", bubbleX, bubbleY);
};

//🟡drawSeaweed Function - Custom Function #3: Draws seaweed
var drawSeaweed = function(weedX, weedY, weedHeight) {
  stroke(0, 255, 0);
  line(weedX, weedY, weedX, weedY - weedHeight); // Draw the seaweed stem
  for (var i = 0; i < weedHeight / 20; i++) {
    line(weedX, weedY - i * 20, weedX + random(-10, 10), weedY - i * 20 + random(0, 10)); // Add some leaves
  }
};







