// ToDo
//buttons
//set up for each game state
//text and titles
//keep track of wins and losses
//countdown timers

String gameState;
int wins;
int losses;

Timer countDownTimer;
int timeLeft;
int maxTime;

void setup() {
  size(800, 600);
  gameState ="START";
  wins = 0;
  losses = 0;

  countDownTimer = new Timer(1000);
  maxTime = 3;
  timeLeft =  maxTime;
}

void draw() {
  clearBackground();
  if (gameState =="START") {
    startGame();
  } else if (gameState == "PLAY") {
    playGame();
  } else if (gameState == "WIN") {
    winGame();
  } else if (gameState == "LOSE") {
    loseGame();
  }
  showScore();
}

void startGame() {
  textAlign(CENTER);
  textSize(20);
  fill(255, 0, 0);
  text("Click Anywhere to Play!", width/2, height/2);
  textSize(14);
  fill(0, 0, 255);
  text("Go LEFT to win\nGo RIGHT to lose", width/2, height/2+30);
  // look for the click
  if (mousePressed == true) {
    gameState = "PLAY";
    countDownTimer.start();
  }
  showScore();
}

void  playGame() {
  fill(255, 0, 0);
  ellipse(mouseX, mouseY, 100, 100);
  // game logic
  if (mouseX < 50) {
    //win
    wins++;
    gameState = "WIN";
  }
  if (mouseX > width - 50) {
    //lose
    losses++;
    gameState = "LOSE";
  }
  //countDown logic
  if (countDownTimer.complete() == true) {
    if (timeLeft > 1) {
      timeLeft--;
      countDownTimer.start();
    } else {
      gameState = "LOSE";
    }
  }
  //show countDown
  String s = "Time Left: " + timeLeft;
  textAlign(LEFT);
  textSize(12);
  fill(255, 0, 0);
  text(s, 20, 100);
}

void winGame() {
  textAlign(CENTER);
  textSize(20);
  fill(255, 0, 0);
  text("Great Job!", width/2, height/2);
  textSize(14);
  fill(0, 0, 255);
  text("Play Again?", width/2, height/2+40);
  drawReplayButton();
  showScore();
}

void loseGame() {
  textAlign(CENTER);
  textSize(20);
  fill(255, 0, 0);
  text("You Lost!, That takes talent.", width/2, height/2);
  textSize(14);
  fill(0, 0, 255);
  text("Again?", width/2, height/2+40);
  drawReplayButton();
  showScore();
}

void resetGame() {
  timeLeft=maxTime;
}

void showScore() {
  //set the text for win and losses
  textAlign(LEFT);
  textSize(14);
  fill(0);
  String s = "Wins: " + wins + "\n" + "Losses: " + losses;
  text(s, 20, 50);
}

void drawReplayButton() {
  //draw button
  fill(100);
  rect(width/2-50, height/2+80, 100, 60);
  fill(0, 255, 0);
  textSize(36);
  text("PLAY", width/2, height/2+122);

  //edges of the botton
  float leftEdge = width/2-50;
  float rightEdge = width/2 +50;
  float topEdge = height/2 + 80;
  float bottomEdge = height/2 + 140;


  // look for the click
  if (mousePressed == true &&
    mouseX > leftEdge &&
    mouseX < rightEdge &&
    mouseY > topEdge &&
    mouseY < bottomEdge) {

    gameState = "PLAY";
    resetGame();
  }
}

void clearBackground() {
  fill(255);
  rect(0, 0, width, height);
}
