--------------------------------------------------------------------------------
 Keyboard Evolve
--------------------------------------------------------------------------------

 Michael Capewell 2005
 smozoma@yahoo.com
 http://www.geocities.com/smozoma/

--------------------------------------------------------------------------------

TABLE OF CONTENTS
-----------------

1.0 Introduction
2.0 Files
3.0 How to Set Up Scoring Parameters

--------------------------------------------------------------------------------

1.0 INTRODUCTION
-----------------

This program randomly generates a bunch of keyboard layouts, scores them based
on some criteria, takes the top few layouts, and starts mutating them, scoring
the mutants, until eventually giving up and starting a new random set.  (WHEW, 
long sentence!).  Eventually, it gives up making random sets and has an 'all
star' round, mutating the best layouts from before.

I was inspired to make this program after reading about PM Klausler's 
experiemnts:  http://www.visi.com/~pmk/evolved.html

Other than wanting to develop a better keyboard layout, my goal writing this 
program was simply to learn C++.  That's my excuse for how horrible the code
is :D.  Also, the program ended up expanding beyond my origial vision, so it's
a bit.. weird.. in places.

--------------------------------------------------------------------------------

2.0 FILES
---------

KeyboardEvolve.cpp  --  The file containing main() that coordinates the 
                        evolution process
Keyboard.cpp        --  Object representing a keyboard layout
Keyboard.h
Score.cpp           --  Object representing the score assigned to a keyboard
Score.h
stringmanip.h       --  A couple utilities for converting between strings and
                        numbers

testlayout.txt      --  You can write a layout into this file and the program
                        will score it along with the other layouts

testdata_combos.txt --  Sets of key combinations the program uses to simulate
                        typing
testdata_text.txt   --  Plain text the program uses to simulate typing (don't
                        bother using this -- it takes forever and the combo 
                        method scores within 2%)

changelog.txt       --  log..of..changes..
README.txt          --  The file you are reading right now

--------------------------------------------------------------------------------

3.0 HOW TO SET UP SCORING PARAMETERS
------------------------------------
Keyboard.cpp:
-------------

Do a search for "THINGS TO SET BEFORE RUNNING"
The settings you will most likely want to alter are
  static const int  RANDOM_SET_SIZE = 512; //should be an even number
  static const int  MAX_ALLSTAR_SET_SIZE = 2048; //should be an even number
  static const int  STAGNANT_RANDOM_ROUNDS_LIMIT = 16;
  static const int  STAGNANT_ALLSTAR_ROUNDS_LIMIT = 512;
  static const int  STAGNANT_POOLS_LIMIT = 32;
I think the meaning of these variables will become apparent once you run the 
program ;)

Score.cpp:
----------

You can create your own penalties/bonuses using the following information:

Do a search for "PENALTY PROTOTYPES"
* These are the function prototypes for the penalties (and bonuses) that the
* keyboards are evaluated with.

Do a search for "THINGS TO SET BEFORE RUNNING"
 * SPACEKEY_REDUCTION_FRACTION = 0.50;
    * The program doesn't just evaluate sets of 2 consecutive keystrokes; it 
      also evaluates combinations like "e t", that is, a key, a space, and 
      another key.  A value of 0.5 means pressing the space key lets you reset
      your finger positions 'half way.'  A value of 0 means it's as though you
      didn't press the space key.  A value of 1 means that pressing the space
      key lets you completely reset your finger positions, so there is no 
      penalty.  0=full penalty.  1=no penalty.

 * p.description = "Using the ring finger on the bottom row";
   p.inEffect = true;
   p.weight = 10;
   p.penaltyFunc = ringFingFunc;
   m_penalties.push_back(p);
    * This is where you set up penalties/bonuses.
      For penalties, the 'weight' is positive.  Bonuses have negative weight.
      p.penaltyFunc = [the name of a penalty function]
      
Do a search for "Penalty Functions"
 * Here, the penalty/bonus functions are defined.
   Below is an example function:
      void jumpHomeRowFunc(ComboInfo &ci, Penalty &p)
      {
         if (sameHand(ci.cCol, ci.lCol)){
            if (abs(ci.cRow-ci.lRow)>=2){		//jumped the home row
               p.occurrences += ci.penaltyMultiplier;
               if(ci.lastChrWasSpace)p.spacekeyReductions+=ci.penaltyMultiplier;
            }
         }
      }
   Do a search for "struct ComboInfo" in Score.h to learn about the ComboInfo 
   (ci) struct.

--------------------------------------------------------------------------------

If you have any suggestions/tips/corrections, please let me know at 
smozoma@yahoo.com