

BW's Vice Mission Builder version v0.21
---------------------------------------------------------------

Changes since v0.14 Deluxe:
- When compiling and copying, if the source file and the
  destination file is the same file, you get a messagebox
  saying just that.

- If compiling fails, the file being compiled is deleted to
  prevent people from decompile files that have not been
  compiled completely.

- "Math coding" made easier. You don't need to specify what
  opcodes to use when using commands related to
  math coding like +, -, /=, *=, and conditional
  opcodes like checking if an internal variable is equal to
  a number or another internal variable.

- Global hotkey F6 in the CodeCreator changed to F4 because it
  conflicted with the F6 key in the mission builder (not good :)

- Can't remember if I forgot something :p




Changes since v0.14:
- Map automod tool, converter and WAR mission 2nd edition.



Changes since v0.135:
- Opcodes never used and opcodes from gta 3 added. Thanks for
  those CyQ and TBM2k (and everybody else complaining about
  any lack of credits in this stupid readme).
- Converter added



Changes since v0.13:
- Easier to set up the IDE with <alt>+<enter>. Annoying dialog
  box removed. Everything changed is automatically saved. No
  point in asking about it.

- Opens last directory accessed when opening files.

- Mission script size details returned when compiling and
  decompiling.

- Major cleanup. Almost all opcodes changed. Opcodes that return
  handles has been changed to
  <returned handle> = <function that created handle>.
  Names of old opcodes changed, like init_parked_car_generator,
  parked_car_generator cars_to_generate,
  remove_references_to_actor (from cleanup_actor),
  destroy_actor_instantly, destroy_actor_with_fade (actor fades
  away like a ghost), remove_references_to_object (from
  destroy_object), one of the put_car codes changed to
  unknown_car drive_to_point.

- Some opcodes needed added info. Info added to decompiled files
  to clear things up, like:
  001C:    1584?? >  4728??  \\ integer values only
  0024:    3008?? >  2996??  \\ floating-point values only
  003A:    6068?? ==  5688??  \\ integer values and handles
  004F: create_thread ££Label010011  \\ Special rules for create_thread commands. 
  0058:  2904?? +=  3076??  \\ integer values
  0059:  3060?? +=  3064??  \\ floating-point values
  0060:  3428?? -=  3440??  \\ integer values
  0061:  3052?? -=  3092??  \\ floating-point values
  0068:  2988?? *=  2924??  \\ integer values
  0069:  3032?? *=  3032??  \\ floating-point values
  0070:  15640?? /=  15876??  \\ integer values
  0071:  27940?? /=  19456??  \\ floating-point values
  0084:  2892?? =  2896??  \\ integer values and handles
  0086:  3052?? =  3088??  \\ floating-point values only

- Other info added just for kicks:
  00D7: create_thread_with_wasted_busted_check ££Label012DE1  \\ Special rules for create_thread commands. Read the readme.
  01B1: give_player $PLAYER_CHAR weapon  17?  68?  \\ Load the weapon model before using this
  01B2: actor  2892?? weapon =  23?  ammo =  9999&  \\ Load the weapon model before using this
  01C2: remove_references_to_actor 2892??  \\ Like turning an actor into a random pedestrian
  01C4: remove_references_to_object  10768??  \\ This object will now disappear when the player looks away
  034F: destroy_actor_with_fade  4148??  \\ The actor fades away like a ghost

- Vice (and gta 3 I guess) opcodes for calculations added.



Changes since v0.125:
- It now always overwrite read-only files (usually without asking).
- Opcode 000E fixed. No more E-nn numbers.
- Other opcodes corrected / description added.
- Some bug fixes.
- Most parts of the ReadMe file has been updated.
- Added my Saved Games Manager (works with any games)



Changes since v0.12:
- Opcodes.txt, findopc.txt, findopc2.txt, F1 key re-enabled,
  CreateFiles.exe (creates new Opcodes.txt, findopc.txt, findopc2.txt files)


Changes since v0.11:
- New format, compiler is now more than 3 times faster
  than any earlier mission builders.


Changes since v0.1:
- Now compatible with the PC version (and still compatible with
  the PS2 version).
- Added two new opcodes (used in the PC version only).




Version 0.21 info
----------------------

This version is fully compatible with version 0.14. Use
the converter on source codes earlier than that.



Installation
------------

Unzip to anywhere. Run 'ViceBuilder021.exe'. The first time
you run the program, you must specify where you installed Gta Vice.

NOTE! If you get an arrow with that hour-glass, you can still
use the arrow to set up the mission builder.

NOTE! If you don't have the PC version of Vice, copy the
'default.ide' and 'american.gxt' file from your Vice version
PS2 DVD to where 'ViceBuilder021.exe' is. You can not start
GTA VICE from the builder if you do this. The 'Compile % copy'
and the 'Compile, copy % Run' feature will be disabled if you
do this.




Starting the mission builder
----------------------------

Run 'ViceBuilder021.exe'.





Doing simple changes, speeding stuff up
---------------------------------------

- Have the builder and VC running at the same time.
- Press ESC in VC to exit to the main menu when you
  want to change something.
- Press Alt-TAB to switch between the builder and VC.
- Use the same video resolution in the game and in your
  windows "desktop"
- Use the 'Compile & Copy' feature in the builder to
  compile.
- Start a new game in VC when changes has been made.
- Use the F1 key to find the opcodes.




Files in the distributed ZIP package
------------------------------------

Since this mission builder is based on others work and
since those other people made some rules about what their
work could be used for, I included some information about
that in the STUFF folder. You should read through these
files since some of them have some useful information
about using the text editor.







Menues, buttons and the rest of the IDE
---------------------------------------

The menues and buttons should to some extent explain
themselves. The button that looks like 'open multiple files'
does something completely different - it disables custom
IDs when decompiling.

Press F1 to find opcodes and parameters for commands.

Example, if you write:

   end_thread


and press the F1 key, the line changes to:

   004E: end_thread


This feature is pretty complex. It is based on 3 different
files that are loaded when the mission builder loads. It
searches for word matches. You can combine words by putting
and underscore between them. The above example searches for
the exact match "end thread" (or "end_thread") only. If you
just write:

   thread


and press the F1 key, every time you press F1, you get another
match. When you press F1 on lines that doesn't have any
underscores at all, the result doesn't include any either.
With "thread", you get one of these:

   00D7: create thread with wasted busted check ££Label011C74
   004F: create thread ££Label0091D0
   004E: end thread
   03A4: name thread "MAIN"


Another example, you want to know what opcodes are used with
"create_actor". Every time you press F1, the line toggles
between these commands:

   0129: create_actor 4? 29? $busted_help_cop_1 in_car_driverseat $busted_help_policecar_1
   01C8: create_actor 4? 29? 0? $luigi4_pimp as_car $luigi4_pimp_car passenger
   009A: create_actor $char_gunshopowner 21? 29? at 1070.75! -396.938! 14.1875!








Learning stuff
--------------

To load a text file or a .scm file, use the file menu or press
the 'open file' icon. If you load a .scm file, this happends:
- The file will be decompiled. The window title shows the progress.
- A file with the extention .TXT will be created. If you load the
  original main.scm file, a file called main.scm.txt will be created.
  If you load a file called something.scm, a file called
  something.scm.txt will be created.
- The file being created will be loaded into the mission builder as
  a text file.

If you load any file other than a .scm file, this happends:
- The file gets loaded as a text file into the mission builder.

If you activate the RUN menu and select compile or just press the
compile icon, this happends:
- The selected text file loaded into the mission builder editor gets
  compiled into a .scm (mission script) file.
- If the name of the text file is something.scm.txt, a mission script
  file called something.scm will be generated. If the name of the
  selected text file is something.txt, a mission script file called
  something.txt.scm will be generated.



This is an example of a "line" inside the editor.

03CB: set_camera  807!  -937!   36.5625! 
  |          |                     |   | 
  |          |                     |   |_ *4
  |          |                     |      
  |          |                     |_____ *3
  |          |                           
  |          |___________________________ *2
  |                                     
  |______________________________________ *1  




*1  This is one of the opcodes.

*2  This is the command string. This part is ignored by this
    version of this mission builder (and any future versions).

*3  This is a number.

*4  This part is VERY IMPORTANT. It identifies the data type
    of the number.



DATA TYPES (you MUST learn and understand this part)
----------------------------------------------------
Data types are used to identify numbers. They exists because BIG numbers require
more storage space than SMALL numbers. This mission builder uses 8 different
data types to identify the numbers. Strings that appear in the mission scripts are
enclosed in " ". Any jump instruction (gosub, jump, jump_if_false, create_thread
call and such) use labels. Labels are defined with a colon in the beginning
of a line and referenced using £ signs. LOCAL jumps (that is all jumps from
one label to another inside a mission) use one  £  before the label. GLOBAL
jumps (that is, jumps from the MAIN part of the code to any missions, jumps
from labels in MAIN to other labels in MAIN and jumps from missions to MAIN)
use  ££  (two of them).


DATA TYPE           MEANING
   ?                Stores 8-bit numbers. You can enter any value from
                    -128 to 127.


   ??               Stores unsigned 16-bit numbers. You can enter any value
                    from 0 to 65535. The values used must be divideable by 4.
                    These numbers represent locations in memory and is used
                    to store data at these locations. With the Vice mission
                    builders memory management), you don't need to use this
                    data type when adding new commands, just use any named
                    constants instead. This data type is used with handles.


   &                Stores signed 16-bit numbers (INTEGER/Boolean/smallint/whatever).
                    You can enter any value from -32768 to 32767. The value
                    will be converted to signed.


   &&               Stores signed 32-bit numbers (LONG INTEGER/whatever)
                    and other 32-bit data.


   !                Stores 32-bit IPL co-ordinates and other data in standard
                    single-precision form. This will probably change in later
                    versions to a different format because Rockstar might have
                    used a different format.


   @                Stores 16-bit numbers used with internal timers and local
                    variables. Variable 0 to 15 is not used as timers. The rest
                    of them are. These variables can be set using the
                    create_thread command like this (not tested):
                    create_thread <label> <parameter 1> <parameter 2>











Named handles (or named identifiers / custom identifiers / handles /
whatever)
----------------------------------------------------------------------
Named handles (or whatever) defined in the vicescm.ini have a
  $  (dollar sign) preceding the name.
Named handles are stored as 16-bit numbers in the mission script.
They can be replaced with numbers using ?? as
data type. 

You can define named handles (identifiers) by creating a line like this:

  DEFINE ID $<Name of identifier> AS <number>

This instruction can override existing identifiers
in the vicescm.ini file. It can also override existing identifiers
defined by using  DEFINE ID $<Name of identifier> AS <number>.

Use this command to reserve memory at any given address and
to give that reserved memory address a name.

Please note that only the numbers can be overridden. If you
use the same name multiple times, you get a compile error. In this
example, test2 overrides test1:
  DEFINE ID $test1 AS 123
  DEFINE ID $test2 AS 123

This example gives a compile error:
  DEFINE ID $test1 AS 123
  DEFINE ID $test1 AS 234

Please note:
* Lines like these should precede any other lines.
* Do not include any data type in <number>.
* <number> always use  ??  as data type internally.
* Compiled .scm files do not contain any named identifiers.

Use the automatic memory management system if you don't need to
reserve memory adresses.





The automatic memory management system
--------------------------------------
The automatic memory management system was introduced with
the GTA 3 mission builder version 4.0. With this system, you get
3 different ways of accessing the mission script memory:
1. You can use the data type  ??  to access the memory directly.
2. You can use the command
     DEFINE ID $<Name of identifier> AS <number>
   to define a constant at any memory address.
3. You can simply just use  $<Name of identifier>  without the
   'DEFINE ID' command to let the compiler find a free memory
   address on its own.







CAR, ACTOR, MODEL, OBJECT AND WEAPON IDENTIFIERS
------------------------------------------------
Cars, actors, models, objects and weapons can be added or
changed using numbers or names as defined in the 'default.ide' file.

Examples (GTA 3): #KURUMA, #GANG03, #CUTOBJ01, #BAT, #COLT45, #UZI

Objects defined in the "second segment" of the mission script file
still use numbers with the name of the object inclosed in
parenthesis.






CONDITIONAL COMMAND STRINGS
-------------------------------------------------
Conditional command strings are command strings that the decompiler
puts into the decompiled text to show what some parameters do.

An example of a conditional command string:

02A3: toggle_widescreen  1? (on)
02A3: toggle_widescreen  0? (off)

The (on) (off) part is the conditional command string.






NEW !!!

"Math coding". Coding without specifying what opcodes to use
------------------------------------------------------------

In version 0.21 and later, you don't need to specify what
opcode to use when using commands related to math coding.
I didn't add all the opcodes used in the mission script
because using the F1 key is a much better approach to coding
that writing everything manually and remembering all the
command names and the parameters they use.

When NOT putting in the opcodes, the compiler changes the
mission script source code by putting the correct opcodes in.
The compiling speed is unchanged because of this.

When using commands that require the data types used in
variables to be set before using the command, the compiler
asks if the variable is to be used with floating-point
operations or not. Example: 1@ = 2@
The compiler must know if 1@ and 2@ is to be used with
floating-point or not. If the user answers "it is", the
source code is changed to 0087: 1@ = 2@

Examples of commands that can be used without putting in
the opcodes:

4000?? = 4004??
4000?? = $MyVariable
$MyVariable = 4000??
$MyVariable = $SomeOtherVariable

4000?? += 4004??
4000?? += $MyVariable
$MyVariable += 4000??
$MyVariable += $SomeOtherVariable

4000?? -= 4004??
4000?? -= $MyVariable
$MyVariable -= 4000??
$MyVariable -= $SomeOtherVariable

4000?? = 0@
$MyVariable = 0@

4000?? += 0@
$MyVariable += 0@

4000?? = 1!
$MyVariable = 0?

1@ = 1!
1@ = 1?
1@ = 1000&
1@ = $myvariable
1@ = 4000??
1@ = 0@


Examples of conditional commands that can be used
without specifying the opcode:

4000?? > 4004??
4000?? > $MyVariable
$MyVariable > 4000??
$MyVariable > $SomeOtherVariable

4000?? == 4004??
4000?? == $MyVariable
$MyVariable == 4000??
$MyVariable == $SomeOtherVariable

and other commands like that.







Stuff
------------------------------------------------------
Sometimes names of objects is enclosed inside parenthesis.
The number preceding it is that object. If you want
to change any of these objects, just change their numbers.

Please note that when a name of a object appear inside parenthesis,
the number that reference that object does not always reference
an object at all. The name of the object is just a suggestion
that usually is 100% correct. When a command that uses objects
defined in the 'default.ide' file uses -1 for that object, it
usually uses random objects in the 'default.ide' file and not
objects defined in the mission script using DEFINE OBJECT.

You should NEVER EVER remove lines with the  DEFINE OBJECT  command
because you must then change ALL the commands in the mission script
that access these objects by their numbers. If you need to add an
object, add it to the end of the list and then change the total
number of objects defined.







IF YOU THINK IT LOOKS UGLY, YOU CAN CHANGE IT
---------------------------------------------
All the commands in my mission builders can be changed.
Just change the vicescm.ini file. Don't blame me if you
mess it up. Create a backup first.

With version 0.125 and later of the Vice mission builders,
you MUST put a space between the parameters in the
'vicescm.ini' file.







RULES THAT MUST BE FOLLOWED WHEN CODING
---------------------------------------

Definitions: 
- 'MAIN part of the code' means the code between the line reading
  ';---MAIN---' and the line reading ';---MISSION 0----'.
- 'MISSION part of the code' mean everything following the line
  ';---MISSION 0----'.


Lines with mission code must start with a 4 letter opcode.
There must be a colon after the opcode. Example:
        01C7: spawn_object 204??

If you change that into:
        1C7: spawn_object 204??

it will not compile. There is a very good reasons for this rule.
SPEED. Without an opcode, the builder would need to find the 
opcode based on the text. Longer compile times and possible
"missunderstandings" do to a badly programmed AI could be the result.

Some types of lines doesn't include direct mission code. There are a
total of 4 different types of lines used. Lines that begins with a
colon are labels. Lines that begins with DEFINE are used to name
identifiers and to set up the first, second and third segments.
Lines that begins with a semicolon are used for remarks. Examples of
lines with labels:

  :Label0123
  :MyLabel
  :anytext

Labels can contain letters and numbers.

Examples of lines that remarks something:

  ;Hi there, I'm a waterduck.
  ;
  ;----Mission 23---------
  ; Originally: Luigi mission 5 'THE FUZZ BALL'

Examples of lines with remarks in them:

  DEFINE MEMORY  17245   \\ this is a remark
  DEFINE OBJECT PLAYERSDOOR   \\ Object number -1  this is also a remark



In this mission builder, the user is responsible for
setting up the first, second and third segments correctly.
If you decompile a mission script, you never need to do
this yourself. If you want to start a mission script from
scratch, do this:

1. Create a new text file.

2. On the top line, put:
     DEFINE VERSION <version>  
   without it, it can't compile.

3. Start the code with a jump code like:
     0002: jump ££SecondSegment

3. Put
     DEFINE MEMORY <bytes>
   after that. The  DEFINE MEMORY  command is used to set up
   the amount of memory to allocate for the mission script.
   You have now defined the first segment.

4. Put a label at the start of the second segment, like this:
     :SecondSegment

   The start of the second segment is now at the 4th line of your
   text file.

5. Put another jump instruction in there, like:
     0002: jump ££ThirdSegment

6. Now, set up the second segment using DEFINE OBJECTS and the number
   of objects to define after that, like:
     DEFINE OBJECTS  186

7. To complete the second segment, use DEFINE OBJECT with the names
   of ALL the objects needed after that, like:
     DEFINE OBJECT (no name)
     DEFINE OBJECT PLAYERSDOOR
     DEFINE OBJECT FAKETARGET
     (and all the rest of them. Note that the first object is not used,
     so you can put your signature there.)

8. Put another label at the beginning of the third segment, like:
     :ThirdSegment

9. Define the entry of the MAIN part of the code by using a jump
   instruction here (at the start of the third segment), like:
     0002: jump ££Main

10. The total number of mission pointers goes next. Use DEFINE MISSIONS
    and the number of missions, like:
      DEFINE MISSIONS  80

11. After that, set up labels for each missions by using DEFINE MISSION
    <zero-based number of mission> AT <label> like this:

    DEFINE MISSION 0 AT ££SomeNewMajorIntro
    DEFINE MISSION 1 AT ££ANewMissionOrSomeThing

    (and the rest of them)

12. Now, set up the MAIN part of the code. This is a pretty complex
    and big thing. See the original decompiled mission script text
    file for clues.





Rules for programming the MAIN part of the code
-----------------------------------------------
- Use GLOBAL addressing. By putting two pound symbols in pairs
  in front of a label you get GLOBAL addressing. Examples of
  GLOBAL addressing:
  - 0002: jump ££Label004364
  - 0050: gosub ££Label015239
  - 02CD: call ££Label00FEAD ££Label00FEAD
  - 004F: create_thread ££Label0091D0
  - 00D7: create_thread_with_wasted_busted_check ££Label011C74
  - 004D: jump_if_false ££Label008E07




Rules for programming the MISSION part of the code
--------------------------------------------------
- Use LOCAL addressing. By putting a single pound symbol in 
  front of a label you get LOCAL addressing. Examples of
  LOCAL addressing:
  - 0002: jump £Label01A9E7
  - 0050: gosub £Label01CBEA
  - 004D: jump_if_false £Label01AA16
- The commands 'call', 'create_thread' and
  'create_thread_with_wasted_busted_check' are NEVER used with
  LOCAL addressing in the original mission script. They can all
  be used in the MISSION part of the code if GLOBAL addressing
  is used. When they are used in the MISSION part of the code,
  they MUST point to code in the MAIN part of the mission script.





OLD rules that MUST be followed when modding
--------------------------------------------
There can be NO SPACES between numbers and their corresponding data type identifiers
(meaning this
   1? 2? 3?
works, this
   1 ? 2 ? 3   ?
does not work).





The STRIPPED.TXT file (not included in the test versions)
---------------------------------------------------------
The  stripped.txt  file is a stripped version of the original main.scm file
decompiled into a text file.

I stripped out all the missions including taxi driver, vigilante, firefighter
paramedic and all the offroad missions. Since the MAIN part controls most stuff
in the game, this is what's left:
- code that controls when gates open and close.
- code that controls when hookers enter the players car.
- code that checks if the player is doing stunts outside unique stunt bonus areas.
- code that checks if the player is doing a unique stunt.
- code that checks if the player is inside ammu-nation shops.
- locations of hidden packages, weapons, kill frenzies/rampages, health, armor,
  some cars, boats and planes. Most parked vehicles has been removed.
- code that controls bonuses when the player has done this or that or found stuff.
- code that controls camera angles when the player is in certain areas.
- code that controls when the player can save his game.
- code for mission script objects like doors on buildings.





The OPCODES.TXT file (not included in the test versions)
--------------------------------------------------------
The OPCODES.TXT file has all the opcodes used in the mission script. It is in
alphabetical order. Load it up in the IDE in a separate window as a TXT file.







Simple mission coding
---------------------

  Coding with conditional checking, 'IF commands'
  -----------------------------------------------

  Example:

  00D6: if  1?,
  0038:   $ONMISSION ==  1?
  0038:   $BUSTED_PICKUP_MADE_FLAG ==  1?
  004D: jump_if_false ££Label008FCA

  There are TWO conditional checks in this code. The first
  conditional check checks if the player is currently on a mission.
  The second conditional check checks if the $BUSTED_PICKUP_MADE_FLAG
  variable is equal to 1. 

  The first line defines the NUMBER OF CONDITIONS to include in the
  conditional check and if the checking is to be done in an INCLUSIVE
  or EXCLUSIVE manner.

  The example code uses INCLUSIVE checking. With INCLUSIVE checking,
  the number in the first line is equal to the number of lines with
  conditional checks MINUS 1. The BASIC programming language uses
  the operand 'AND' for INCLUSIVE conditional checking.

  With EXCLUSIVE checking, the number in the first line is equal to
  the number of lines with conditional checks PLUSS 19. The BASIC
  programming language uses the operand 'OR' for EXCLUSIVE conditional
  checking.

  This is the BASIC equivalent to the example code above:

  IF $ONMISSION=1 AND $BUSTED_PICKUP_MADE_FLAG = 1 THEN

  With EXCLUSIVE checking the code looks like this:

  00D6: if  21?,
  0038:   $ONMISSION ==  1?
  0038:   $BUSTED_PICKUP_MADE_FLAG ==  1?
  004D: jump_if_false ££Label008FCA

  Two conditional checks + 19 for EXCLUSIVE checking = 21 in the first line.

  This is the BASIC equivalent to the example code with EXCLUSIVE
  checking:

  IF $ONMISSION=1 OR $BUSTED_PICKUP_MADE_FLAG = 1 THEN

  When all the conditional checks are checked, the result of all the
  checks is controlled by the '004D: jump_if_false' opcode and
  command. If the result is FALSE, the code "jumps" to the label
  in the command. If the result is TRUE, the code following the
  '004D: jump_if_false' opcode and command is executed.

  You must remember to follow the rules for GLOBAL and LOCAL
  addressing when coding. When coding in the MAIN part of the code,
  use GLOBAL addressing with the label in the '004D: jump_if_false'
  command. The code in the examples uses GLOBAL addressing. This means
  this code must be placed in the MAIN part of the mission script.

  This is the same code using LOCAL addressing. This code must be
  placed in the MISSION part of the mission script:

  00D6: if  21?,
  0038:   $ONMISSION ==  1?
  0038:   $BUSTED_PICKUP_MADE_FLAG ==  1?
  004D: jump_if_false £Label008FCA




  Coding a simple mission with the 'stripped.txt' file
  ---------------------------------------------------- 

  First, follow these steps:
  - Start up the mission builder.
  - Load the file 'stripped.txt' into the mission builder.
  - Press <Ctrl> + F to use the 'Find Text' dialog box.
  - Search for the text  ;---
  - Press F3 to repeat the search until you get the text
    ;-------------Mission 0---------------
  - About 26 lines below that is some code for loading
    a cheetah into the game. It should look something like:

    0247: request_model #CHEETAH
    :check1
    00D6: if  0?,
    8248:   NOT   model #CHEETAH available
    004D: jump_if_false £check1ok
    0001: wait 0? ms
    0002: jump £check1

    :check1ok
    00A5: create_car #CHEETAH $eight_car at 812! -945.5!  35.75!
    0249: release_model #CHEETAH

  Lets take a look at this code :-)

  The '0247: request_model #CHEETAH' command tells the game that we want
  to create a cheetah car. Before a car, actor or object is created, it
  must be loaded or requested. This code requests the model for the cheetah.
  The model for the cheetah is now loaded in a "low priority" manner. You
  can think of this like a way of loading something "in the background" of
  the game. The model isn't loaded until the game "finds the right time" to
  load it.

  Since the model of the cheetah must be loaded before we can create the
  cheetah car, we must check if the model has been loaded before we can
  create the cheetah car. This is done with this code:

    :check1
    00D6: if  0?,
    8248:   NOT   model #CHEETAH available
    004D: jump_if_false £check1ok
    0001: wait 0? ms
    0002: jump £check1

    :check1ok

  The conditional command '8248:   NOT   model #CHEETAH available' returns
  FALSE if the model of the CHEETAH is loaded. The command
  '004D: jump_if_false £check1ok' "jumps" to label 'check1ok' if the
  command '8248:   NOT   model #CHEETAH available' returns FALSE. This
  means that the code waits until the model of the cheetah is available
  before the code following the label 'check1ok' is executed.

  This code creates the cheetah car:

    00A5: create_car #CHEETAH $eight_car at 812! -945.5!  35.75!

  A handle to the car is now stored in the '$eight_car' variable. This
  handle can be used with any commands that require a handle to a car.
  The 'at 812! -945.5!  35.75!' part of the command defines where in
  the gaming world the cheetah car will be created. The best way (in my
  opinion) is to use the ADMIN CONSOLE to get coordinates of cars in the
  game.

  When the cheetah car is created, we no longer need the "model" for it,
  so the "memory" for the "model" can be freed up. We do that using the
  '0249: release_model #CHEETAH' command.




  Setting up a new mission in the 'stripped.txt' file
  ---------------------------------------------------

  To set up a new mission in the 'stripped.txt' file,
  copy this code and change everything enclosed in < > .

    ;-------------Mission <mission number>---------------
    :Mission<mission number>  
    0050: gosub £<label where the mission code starts> 
    00D6: if  0?,
    0112:   wasted_or_busted
    004D: jump_if_false £<label for skipping the mission failure code>
    0050: gosub £<label for mission failure code. Executed if player dies or gets arrested during the mission>

    :<label for skipping the mission failure code>
    0050: gosub £<label for the mission cleanup code>
    004E: end_thread

    :<label where the mission code starts>
    0317: increment_mission_attempts
    03A4: name_thread "<thread name>"
    0004: $onmission =  1?
    0110: player $PLAYER_CHAR wanted_level = 0

    :<Label for mission loop>
    0001: wait 0? ms
    0002: jump £<Label for mission loop>

    :<label for mission failure code. Executed if player dies or gets arrested during the mission>
    00BA: text_styled "M_FAIL"  4000& ms  1?  \\ MISSION FAILED!
    0051: return

    :<label for the mission cleanup code>
    0004: $ONMISSION =  0?
    00D8: mission_cleanup
    0051: return


  When you have done that, change this line 'DEFINE MISSIONS <number of missions>'
  and add this line 'DEFINE MISSION <mission number> AT ££Mission<mission number>'.
  Adding code in the MAIN part of the code for starting the new mission is also
  a good idea :-)


  Learning more
  -------------

  To learn more about simple mission coding, decompile the original mission
  script and start reading  :-)

  You can also download sample missions and source code from

    http://www.gtaforums.com
    http://www.codenamenetwork.com/wingding42  (bonkers)
    http://home.c2i.net/barton49
    http://home.no.net/barton57





Advanced mission coding
-----------------------

  Multi-Task programming
  ----------------------

  You can create missions to run in a single- or multi-task manner.
  To make a mission run in multiple tasks, use the 'create_thread'
  or the 'create_thread_with_wasted_busted_check' command.

  Example:
     004F: create_thread ££Snipers        \\ Simulated snipers

  This command can be put in the MAIN part of the code or in the MISSION
  part of the code.




  Rules for Multi-task programming
  --------------------------------

  Unless proven otherways, these are the rules:

  - NEVER use the 'create_thread' command unless you actually want your
    missions to run multiple mission codes simultaniously.

  - When using 'create_thread <label>' the label and the code following
    it must in the MAIN part of the code. See 'Rules for programming
    the MAIN part of the code' for more information.

  - The 'create_thread' command can be issued from both the MAIN part of
    the code and the MISSION part of the code.

  - In the original script, most of the threads started with the
    'create_thread' command runs in a 'low-priority' manner. Use
    the 'wait' command to set the priority of a thread.

    Example:
        0001: wait $DEFAULT_WAIT_TIME ms

    When using '0001: wait $DEFAULT_WAIT_TIME ms', the priority is set with
    a "wait-state" of 250 milliseconds.

  - It might be possible to "overload" the mission script by running
    a certain number of high priority threads simultaniously. If it is
    possible, it might hurt the frame-rate or the time it takes to
    load the scenery, resulting in the famous "temporary missing texture
    loss" thing.





LINKS
-----

The Grand Theft Auto, Grand Theft Auto II , Grand Theft Auto III and
Grand Theft Auto: Vice City forums - GTAForums:
  http://www.gtaforums.com


My files:
  http://www.codenamenetwork.com/wingding42 (bonkers)
  http://home.c2i.net/barton49
  http://home.no.net/barton57
  http://home.no/bobby-stalefish/



