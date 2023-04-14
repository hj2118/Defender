/// @description Insert description here
// You can write your code in this editor

globalvar PLAYER_LIVES;
PLAYER_LIVES = 3;

//gameOver = false;

globalvar COMPLETE;
//COMPLETE = false;

globalvar SCORE;
SCORE = 0;

globalvar LEFT;
LEFT = false;

//globalvar CHANGEDIRECTION;
//CHANGEDIRECTION = false;

camera_xEnd = 860;
camera_xCurrent = 860;

//paused = false;

globalvar RIGHTEDGE;
RIGHTEDGE = 4100;

globalvar LEFTEDGE;
LEFTEDGE = 1100;

globalvar BOMBS;
BOMBS = 6;

globalvar THROWBOMB;
THROWBOMB = false;

globalvar BOMBTIME;
BOMBTIME = 0;

layer_id = layer_get_id("Background");
background_id = layer_background_get_id(layer_id);

gametime = 0;
missiletime = false;

