
GTA VC mission code creator.


Works with GTA VC v1.0 and v1.1,
BW's Vice mission Builders,
GTAMA, Dans editor and future
editors (as far as I know).


Written by me with help
from ST.MU aka Steve M.
Thanks for finding those adresses
ST.MU aka Steve M  - What a nice guy !!!



INSTRUCTIONS
------------

Priority settings: Sets how frequently the coords are updated.
                   Open the 'codecreator.ini' file to change it.
                   Valid range is 100 to never.

Auto copy to clipboard: The text in the coordinates windows is
                        copied to the clipboard when the text
                        changes. The text in the output window
                        is copied after the code has been
                        generated. When disabled, you can press
                        F4 (global hotkey) to copy the coords
                        to the clipboard.

Coords Format: Use [X]! [Y]! [Z]! for the mission builders.
               Use [X], [Y], [Z] for GTAMA.


Example 1
---------

Place 100 hidden packages using the mission builder and this
program.

1. Start this program (the Code Creator program).
2. In the source code window (the big white square thing to
   the top right)
   write this:
   02EC: put_hidden_package_at  [x]! [y]! [z]!
3. In the REPEAT box, put 100 (so it reads Repeat 100)
4. If you have the 1.1 version of GTA VC, check the
   GTA VC v1.1 box.
5. If you have the 1.0 version of GTA VC, uncheck the
   GTA VC v1.1 box.

6. Start GTA VC. Start a new game or load a saved game.
7. Walk about. When you come to a place you want to place
   a hidden package, press F5 once. Nothing seems to happen.
   This is normal. It happens in the background. I might
   put in some applause sound or something later.
8. Walk about until you find a new spot and press F5.
   Repeat this process about 100 times.
9. When you have pressed F5 100 times, press ALT-TAB
   to task-switch to this program.
10. Use your eyes and read what's in the 'coords read:'
    box. This is the number of times you have pressed
    F5.
11. Press that big square Process button.
12. Look inside the output window (the big white square thing
    to the bottom right). This is the generated code.
13. Mark all the text in this window and copy the text. Past
    the text into the mission builder (in a GOOD spot).

=================================================================
=================================================================


Example 2
---------

Place 100 numbered hidden packages using the mission builder and
this program.

Like Example 1, except use this code:
02EC: put_hidden_package_at  [x]! [y]! [z]!   \\ Hidden Package Number [1]

And in the two edit control boxes to the top left, put the
number 1 so it reads: [1] = 1 Add 1

=================================================================
=================================================================


Example 3
---------

Create 200 checkpoints in a mission.

1. Start this program (the Code Creator program).
2. In the source code window (the big white square thing to
   the top right)
   write this:
   00D6: if  0?
   0038:   $FaggioChkPoint == [1]?
   004D: jump_if_false £FaggiochkPoint[2]
   0005: $FchkPointX =  [x]!
   0005: $FchkPointY =  [y]!
   0005: $FchkPointZ =  [z]!
   0002: jump £CreateNewchkPoint

   :FaggiochkPoint[2]

3. In the REPEAT box, put 200 (so it reads Repeat 200)
4. In the [1] = box, put 1 and Add with 1 so it reads:
   [1] = 1 Add 1
5. In the [2] = box, put 2 and Add with 1 so it reads:
   [2] = 2 Add 1
6. If you have the 1.1 version of GTA VC, check the
   GTA VC v1.1 box.
7. If you have the 1.0 version of GTA VC, uncheck the
   GTA VC v1.1 box.

8. Start GTA VC. Start a new game or load a saved game.
9. Walk about or drive around. When you come to a place
   you want to use for a checkpoint, press F5 once.
   Nothing seems to happen. This is normal. It happens
   in the background. I might put in some applause sound
   or something later.
10. Walk about or drive around until you find a new spot
    and press F5. Repeat this process 200 times.
11. When you have pressed F5 200 times, press ALT-TAB
    to task-switch to this program.
12. Use your eyes and read what's in the 'coords read:'
    box. This is the number of times you have pressed
    F5.
13. Press that big square Process button.
14. Look inside the output window (the big white square thing
    to the bottom right). This is the generated code.
15. Mark all the text in this window and copy the text. Past
    the text into the mission builder (in a GOOD spot).

=================================================================
=================================================================


Example 4
---------

Add 200 checkpoints to my Faggio Explorer mission.

Same as example 3, except, put 253 in the [1] = box
and 254 in the [2] = box so it reads:
[1] = 253 Add 1
[2] = 254 Add 1

=================================================================
=================================================================

