/// @description INITIALIZE
///////////////////////////////////////////////
///////////////////////////////////////////////

//Actors
global.actor[0, 0] = "Hisao"; //name
global.actor[0, 1] = 0; //gender
global.actor[0, 2] = make_color_rgb(98, 146, 118); //name color
global.actor[0, 3] = true; //know Actor

global.actor[1, 0] = "Iwanako"; //name
global.actor[1, 1] = 1; //gender
global.actor[1, 2] = c_white; //name color
global.actor[1, 3] = false; //know Actor

global.actor[2, 0] = "Shizune"; //name
global.actor[2, 1] = 1; //gender
global.actor[2, 2] = make_color_rgb(114, 173, 238); //name color
global.actor[2, 3] = true; //know Actor

global.actor[3, 0] = "Misha"; //name
global.actor[3, 1] = 1; //gender
global.actor[3, 2] = make_color_rgb(255, 128, 159); //name color
global.actor[3, 3] = true; //know Actor

global.actor[4, 0] = "Kenji"; //name
global.actor[4, 1] = 0; //gender
global.actor[4, 2] = make_color_rgb(255, 64, 220); //name color
global.actor[4, 3] = true; //know Actor

//Sprite Configuration
global.sayTextbox_spr = spr_say;
global.narrationTextbox_spr = spr_nvl;
global.textArrow = spr_next;

//Text Configuration
global.textFont = ft_normal;
global.textFontBold = ft_bold;
global.textColor = c_white;
global.textSpeed = 1;
global.textSound_female = -1;
global.textSound_male = -1;

//Misc
global.nChoices = 0;
global.choiceSelection = -1;
global.choice[0] = "";
global.choice[1] = "";
global.choice[2] = "";
global.choice[3] = "";
global.choice[4] = "";

for(var i = 0; i < 100; i ++)
{
    global.flag[i] = -1;
}

global.currentMusic = -1;
global.currentBackground = -1;
global.backgroundX = 0;
global.backgroundY = 0;
global.currentWeather = -1;
global.musicFadeInTime = 0;

global.drawRect_alp = 0;
global.drawRect_typ = -1;
global.drawRect_spd = 0;
global.drawRect_col = c_white;

global.textbox_alpha = 0;
global.textType = -1;
global.textbox_sprite = -1;
global.textActor = -1;
global.textPosition = 0;
global.textSkip = 0;

global.arrowAlpha = 0;
global.arrowAlphaDec = 0;

global.savedBackground = -1;
global.savedPosition = 0;
global.savedColor = c_white;
global.savedValue = 0; 

global.zoomTime = 0;
global.backgroundWidth = 1000;
global.backgroundHeight = 600;
global.zoomType = -1;
global.lastType = -1;
global.timeOutEndAction = -1;
global.timeOut = 0;

global.VFXObject = 0;
global.VFXTimer = -1;
global.VFX_xpos = 0;
global.VFX_ypos = 0;

global.showSpeed = 0;
global.showAlpha = 0;
global.charX = __view_get( e__VW.WView, 0 ) / 2;

global.gameState = 0;
global.canClick = 0;

for(var i = 0; i < 4; i ++)
{
    global.lastchar[i] = -1;
    global.char[i] = -1;
}


//Engine
global.currentText = "";
global.showText = "";
global.nextChar = -1;
global.textFinished = 0;

global.currentStep = 0;
global.currentScene = 0;
global.currentAct = 0;

global.write = 0;

for(var i = 0; i < 200; i ++)
{
global.step[i, 0] = ""; //text
global.step[i, 1] = -1; //actor
global.step[i, 2] = -1; //showActor
global.step[i, 3] = -1; //showActorPos
global.step[i, 4] = -1; //backgroundChange
global.step[i, 5] = -1; //backgroundChangePos
global.step[i, 6] = -1; //backgroundChangeColor
global.step[i, 7] = -1; //backgroundChangeSpeed
global.step[i, 8] = -1; //playMusic
global.step[i, 9] = -1; //playMusicSpeed
global.step[i, 10] = -1; //stopMusic
global.step[i, 11] = -1; //setWeather
global.step[i, 12] = -1; //setWeatherPart
global.step[i, 13] = -1; //setFlag
global.step[i, 14] = -1; //setScene
global.step[i, 15] = -1; //setAct
global.step[i, 16] = -1; //setKnownActor
global.step[i, 17] = -1; //playSoundBegin
global.step[i, 18] = -1; //zoomInAmount
global.step[i, 19] = -1; //zoomInTime
global.step[i, 20] = -1; //zoomOutAmount
global.step[i, 21] = -1; //zoomOutTime
global.step[i, 22] = -1; //Wait
global.step[i, 23] = -1; //WaitShow
global.step[i, 24] = -1; //object VFX
global.step[i, 25] = -1; //xpos
global.step[i, 26] = -1; //ypos
global.step[i, 27] = -1; //creationstep
global.step[i, 28] = -1; //totalwait
global.step[i, 29] = -1; //hidetextboxbefore
global.step[i, 30] = -1; //showtextboxafter
global.step[i, 31] = -1; //showspeed
global.step[i, 32] = -1; //char1
global.step[i, 33] = -1; //char2
global.step[i, 34] = -1; //char3
global.step[i, 35] = -1; //char4
global.step[i, 36] = -1; //flag ID
global.step[i, 37] = -1; //option 1
global.step[i, 38] = -1; //option 2
global.step[i, 39] = -1; //option 3
global.step[i, 40] = -1; //option 4
global.step[i, 41] = -1; //option 5
global.step[i, 42] = -1; //option 5
global.step[i, 43] = -1; //option 5
global.step[i, 44] = -1; //option 5
}

