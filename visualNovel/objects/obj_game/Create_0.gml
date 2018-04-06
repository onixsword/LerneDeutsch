/// @description SCENE 1
/*
FadeIn(0, c_black);
FadeOut(2000, c_black);

ChangeBackground(bk_snowyWoods, center);
SetWeather(0, true);
PlayMusic(mus_lullaby_of_open_eyes, 0);

Dialogue(-1, "A light breeze causes the naked branches overhead to rattle like wooden windchimes.");
Dialogue(-1, "This is a popular retreat for couples in the summer. The deciduous trees provide a beautiful green canopy, far out of sight of teachers and fellow students.");
Dialogue(-1, "I breathe into my cupped hands and rub them together furiously to prevent them from numbing in this cold.");
Dialogue(0, "Just how long am I expected to wait out here, anyway? I'm sure the note said 4:00 PM.");
Dialogue(-1, "Ah yes... the note... slipped between the pages of my math book while I wasn't looking");
Dialogue(-1, "As far as clichés go, I'm more a fan of the letter-in-the-locker, but at least this way shows a bit of initiative.");
Dialogue(-1, "As I ponder the meaning of the note, the snowfall gradually thickens.");
Dialogue(-1, "The snowflakes silently falling from the white-painted sky are the only sign of time passing in this stagnant world.");
Dialogue(-1, "Their slow descent upon the frozen forest makes it seem like time has slowed to a crawl.");

PlaySound(sfx_rustling);

Dialogue(-1, "The rustling of dry snow underfoot startles me, interrupting the quiet mood. Someone is approaching me from behind.");
Dialogue(1, "Hi... Hisao? you came?");
Dialogue(-1, "A hesitating, barely audible question.");
Dialogue(-1, "However, I recognize the owner of that dainty voice instantly.");
Dialogue(-1, "I feel my heart skips a beat.");
Dialogue(-1, "It's a voice I've listened to hundreds of times, but never as more than an eavesdropper to a conversation.");
Dialogue(-1, "I turn to face this voice, the voice of my dreams, and my heart begins to race...");

KnownActor(1);

ChangeBackgroundFade(bk_iwanako, center, c_white, 2000);
ZoomOut(1.1, 8000);

Wait(3000, show);

Dialogue(0, "Iwanako? I got a note telling me to wait here... it was yours?");
Dialogue(-1, "Dammit. I spent all afternoon trying to come up with a good line and that was the result.");
Dialogue(-1, "Pathetic.");
Dialogue(1, "Ahmm... Yes. I asked a friend to give you that note, I'm so glad you got it.");
Dialogue(-1, "A shy, joyous smile that makes me so tense I couldn't move a single muscle even if I tried.");

ChangeBackgroundFade(bk_snowyWoods, center, c_white, 1000);
PlaySound(sfx_transition);
StopMusic(5000);

CreateVFX(obj_heartAttackCr, 0, 0, 2000, 4000, hide, show);

Dialogue(-1, "My heart is pounding now, as if it were trying to burst out from my chest and claim the girl for itself.");

ChangeBackgroundFade(bk_iwanako, center, c_white, 1000);
PlaySound(sfx_transition);

Dialogue(0, "Ah... so here we are, out in the cold.");
Dialogue(-1, "Once again, the wind stirs up the branches, the cacophonous noise is music to my ears.");
Dialogue(-1, "Iwanako flinches ever so softly against the gust of wind.");
Dialogue(-1, "As it passes, she rights herself, as if supported by some new confidence.");
Dialogue(-1, "Her eyes lock with mine and she lazily twirls her long, dark hair around her finger.");
Dialogue(-1, "All the while, the anxious beating of my heart grows lowder.");

ChangeBackgroundFade(bk_snowyWoods, center, c_white, 1000);
PlaySound(sfx_transition);

Dialogue(-1, "My throat is tight; I doubt I could even force a word out if I tried.");
Dialogue(1, "You see... ");
CreateVFX(obj_heartAttack, 0, 0, 600, 1200, hide, show);
Dialogue(1, "I wanted to know...");
CreateVFX(obj_heartAttackDouble, 0, 0, 800, 1600, hide, show);
Dialogue(1, "... if you'd go out with me..");

Dialogue(-1, "I stand there, motionless, save for my pounding heart.");
CreateVFX(obj_heartAttackFast, 0, 0, 500, 1000, hide, show);
Dialogue(-1, "I want to say something in reply but my vocal cords feel like they've been stretched beyond the breaking point.");


PlayMusic(mus_cold_iron, 0);

Dialogue(1, "... Hisao?");
CreateVFX(obj_heartAttack, 0, 0, 500, 1000, hide, show);
Dialogue(-1, "I reach out to try to massage my throat, but this only sends spikes of blinding pain along my arms.");
CreateVFX(obj_heartAttackFast, 0, 0, 500, 1000, hide, show);
Dialogue(1, "Hisao?!");
CreateVFX(obj_heartAttack, 0, 0, 500, 1000, hide, show);
Dialogue(-1, "My whole body freezes, save for my eyes, which shoot open in terror.");
CreateVFX(obj_heartAttackFast, 0, 0, 500, 1000, hide, show);
Dialogue(1, "HISAO!");
Dialogue(-1, "The beating in my chest suddenly stops, and I go weak at the knees.");

CreateVFX(obj_flashback, 0, 0, 1000, 5000, hide, show);
Dialogue(-2, "The world around me - the canopy of bare branches, the dull winter sky, Iwanako running towards me - all of these fade to black.");

FadeIn(0, c_black);
FadeOut(2000, c_black);

ChangeBackground(bk_council, center);
PlayMusic(mus_student_council, 0);

Dialogue(-1, "Shizune opens the door to the student council room. It's a very plain, sparsely decorated room, although it is quite large, maybe even a little larger than a classroom.");
Dialogue(-1, "There's a big table in the center surrounded by chairs, and a smaller desk prominently placed placed in the back that I assume it's Shizune's. There are a few regular desks and chairs stacked to one side, as well. Extras, perhaps?");
Dialogue(-1, "This is a pretty bleak room, they should've at least placed a potted plant somewhere, or something. But the most noticeable thing in this room is that there is no other people.");
Dialogue(0, "Are we early?");

Show(1000, spr_misha_hips_smile, spr_shizu_behind_blank);

Dialogue(2, "...");
Dialogue(3, "No~.");
Dialogue(0, "What do you mean 'no?' Does it mean nobody else is coming today?");

Show(500, spr_misha_hips_smile, spr_shizu_adjust_smug);

Dialogue(2, "...");

Show(500, spr_misha_hips_smile, spr_shizu_adjust_smug);

Dialogue(3, "Yeah, that's right~.");

Show(500, spr_misha_sign_smile, spr_shizu_adjust_smug);

Dialogue(2, "...");

Show(500, spr_misha_sign_smile, spr_shizu_adjust_happy);

Dialogue(3, "Hicchan, let's play Risk! Come on, you promised, didn't you? You have to~!");

Show(500, spr_misha_hips_grin, spr_shizu_adjust_smug);

Dialogue(3, "Hahaha~! Okay okay okay~! Do you know the rules? We can explain to you while we set everything up!");

Show(500, spr_misha_hips_grin, spr_character_gone);

Dialogue(-1, "While Misha is talking, Shizune takes out what looks like a board game from behind one of the filing cabinets and throws it on the table.");
Dialogue(-1, "Actually, this looks kind of interesting.");

Show(500, spr_misha_hips_grin, spr_shizu_adjust_frown);

Dialogue(-1, "After Misha spends a little too long for her liking running through the basics with a somewhat vague and confusing tutorial, Shizune cuts in and declares the game has started with a decisive motion, slicing her arm through the air.");
Dialogue(-1, "Shizune's agressiveness is rubbing off onto me. I start feeling more competitive than I intended to be when I agreed to this.");

Show(500, spr_misha_perky_smile, spr_shizu_basic_normal2);

PlayMusic(mus_hokabi, 2000);

Dialogue(-1, "Halfway into the game, while I try to ponder how to defend against Shizune's assault from two fronts, she breaks my concentration by drumming her fingers on the table to get my attention.");

Show(500, spr_misha_perky_smile, spr_shizu_behind_frown);

Dialogue(2, "...");

Show(500, spr_misha_sign_smile, spr_shizu_behind_frown);

Dialogue(3, "Hicchan, Shicchan wants you to know that you are taking too long to make a move.");

Show(500, spr_misha_hips_smile, spr_shizu_behind_frown);

Dialogue(3, "Shicchan also says that she will let you keep Australia if you agree to join the Student Council~!");

Dialogue(0, "I thought this was a game with no strings attached.");

Dialogue(-1, "Just the fact that she would dangle that over my head as an offer means that she knows I care about the outcome of this game.");

Dialogue(0, "And anyway: No!");

Show(500, spr_misha_hips_smile, spr_shizu_adjust_smug);

Dialogue(3, "Shicchan admires your fighting spirit and would be a benevolent dictator who will spare your people if you agree to join the Student Council~!");

Show(500, spr_misha_cross_laugh, spr_shizu_adjust_smug);

Dialogue(3, "Hahahaha~!");

Show(500, spr_misha_cross_grin, spr_shizu_adjust_smug);

Dialogue(0, "You're so competitive, Shizune.");

Show(500, spr_misha_cross_grin, spr_shizu_adjust_happy);

Dialogue(-1, "She seems to take this as a compliment.");
Dialogue(0, "I would expect the Student Council president to be a little more magnanimous.");

Show(500, spr_misha_perky_confused, spr_shizu_adjust_happy);

Dialogue(3, "Mag—nan—i—mous...?");

Dialogue(-1, "She doesn't know what the word means or how it's signed, so she pulls out a piece of paper and writes it for Shizune, who in return signs it back to Misha.");

Show(500, spr_misha_perky_confused, spr_shizu_basic_happy);

Dialogue(2, "...");

Dialogue(-1, "Suddenly, Shizune bursts into a flurry of gestures. Misha looks daunted by the pace of her heated signing.");

Show(500, spr_misha_sign_confused, spr_shizu_basic_happy);

Dialogue(3, "Ah, wait, please slow down, Shicchan... Um, Hicchan~! Shicchan says you're going to lose!");

Dialogue(0, "Tell her that I will crush her world empire with my rebellion.");

Dialogue(3, "Ah... Okay.");

Show(500, spr_misha_sign_confused, spr_shizu_basic_sparkle);

Dialogue(-1, "Those eyes of hers shine with childlike mischief.");

Show(500, spr_misha_sign_confused, spr_shizu_basic_happy);

Dialogue(2, "...");

Show(500, spr_misha_cross_smile, spr_shizu_basic_happy);

Dialogue(3, "She says you have no chance if you keep playing like this, no you won't~!");

ShowOptions(0, "It's a trap, it's smarter to play defensively here.", "She has a point. Attack aggressively!");

StartText(say);
ChangeState(0);



/*
Text Types:

Say: standard dialogue/actor thought
Narration: for long monologues



*/
FadeIn(0, c_black);
FadeOut(2000, c_black);

PlayMusic(mus_student_council, 1000);

ChangeBackground(bk_aeropuerto_tienda, center);

Dialogue(0, "Good Morning");
Show(1000, spr_vendedor);
Dialogue(1, "Good Morning sir");
Dialogue(0, "Excuse me. My phone ran out of charge, could you tell me the hour");
Dialogue(1, "Oh, yes, it’s 9:25");
Dialogue(0, "Thank you");

Show(1000, spr_character_gone);
ChangeBackgroundFade(bk_dark, center, c_black, 2000);
Dialogue(2, "Ruf nach Andurisu, er wartet auf dich am Ausgang vierzehn mit Adresse nach Kazan");
Dialogue(2, "Es wiederholt sich");
Dialogue(2, "Ruf nach Andurisu, er wartet auf dich am Ausgang vierzehn mit Adresse nach Kazan");
Dialogue(-1, "El vuelo a Kazán es a las 11");
Dialogue(-1, "Tengo algo de tiempo antes de ello");
ChangeBackgroundFade(bk_aeropuerto_salida, center, c_black, 2000);

Dialogue(-1, "El vuelo a Kazan es por la salida 18");
Dialogue(-1, "Aqui esta la salida");
Show(1000, spr_oficial);
Dialogue(3, "Guten tag. Haben sie ihre bordkarte");
Dialogue(0, "Emmm...");
Dialogue(3, "Excuse me, Good Morning");
Dialogue(0, "Good Morning");
Dialogue(3, "Do you have a bording pass?");
Dialogue(0, "Yes. Here it is");

PlaySound(sfx_rustling);

Dialogue(3, "Excuse me a moment");

Show(1000, spr_character_gone);
Wait(2000, show);
Show(1000, spr_oficial);

Dialogue(3, "It looks like the airplane which you were taking had left the port less than an hour and a half");
Dialogue(0, "Excuse me?");
Dialogue(0, "But the ticket says it will be at this hour");
Dialogue(3, "Well, it arrived some time before, so the airport should had called to change the time");
Dialogue(-1, "Mi telefono no tenia pila en ese momento");

DialogueOptions(-1, "¿Ahora que hago?", 0, "Irse", "Insistir");

	//Irse
	DialogueFlag(0, 0, 0, "Oh, thanks for telling me this");
	//Insistir
	DialogueFlag(0, 1, 0, "But, why would the plane leave before everybody is in it? Specially if it has an hour of advantage");
	DialogueFlag(0, 1, 3, "Well, I don’t know. I hadn’t made the rules");
	DialogueFlag(0, 1, 3, "Listen. You can go all the way this corridor and turn to the left. After 3 locals you may find help with this problem");

Show(1000, spr_character_gone);
ChangeBackgroundFade(bk_aeropuerto_exterior, center, c_white, 2000);
Dialogue(-1, "Este es el fin del test");

//DialogueOptionsFlag(0, 1, 4, "dije chocolate qe opinas ?¿", 0, "nada", "bai");

/*

ShowOptions(1, "no tiene sentido.", "bye.");
DialogueFlag(1, 0, 4, "porque?");
DialogueFlag(1, 1, 4, "bye.");

ShowOptionsFlag(1, 0, 2, "vainilla es chocolate", "deja de mentirme men");

DialogueFlag(2, 0, 4, "wtf no es cierto.");
DialogueFlag(2, 1, 4, "tu gfa");
//ChangeState(0);

*/

StartText(say);

/* */
/*  */
