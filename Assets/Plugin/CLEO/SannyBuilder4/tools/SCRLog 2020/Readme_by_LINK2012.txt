*************    SCRLOG    **************
************* by LINK/2012 **************

-What is it?

	SCRLOG is a plugin for GTA III, Vice City and San Andreas, it is a spiritual successor for SCMLOG.

	Using this plugin you will be able to see a log of all commands executed, including params, return values, boolean result, etc

	So, what's the difference between this and SCMLOG?
	Alright...

	With time, things evolve, new things are discovered and that happened to the GTA scripting community!
	We have found how the real SCM language was handled, the real command names, the real syntax...
	...well, we would never discover it if R* (or a 3rd party developer) didn't left that informations in both GTA III and Vice City mobile.
	But we did and hopefully someone will create a native SCM compiler (or what we call the native SCM... SCR... a SCR compiler)
	
	Now, it is the time to SCMLOG evolve to SCRLOG!
	SCRLOG provides a nice logging for many things happening in the scm script engine represented in a native (SCR) way.
	An example of a SCRLOG log:

		00069846&1: [00D6] IF 0
		00069850&0: [0038] g409(0) == 0    // TRUE
		00069857&1: [004D] GOTO_IF_FALSE 70620
		00069864&1: [00D6] IF 0
		00069868&0: [00FF] LOCATE_CHAR_ON_FOOT_3D 1 -2026.81 -114.909 1034.18 20.0 20.0 10.0 0    // FALSE
		00069899&0: [004D] GOTO_IF_FALSE 70210

	Much better than the old SCMLOG, that by the way, can only log values that you send to the engine, not ones that you receive.

	"Right, but can you make a list of things tha changed from SCMLOG?", yeah:
		*1 ASI for 3 games.
		*An extremely configurable ini file
		*Can log directly into the disk instead of keeping things in memory until the time to send to the disk (Useful on certain crashes that the plugin can't flush things from memory to disk anymore)
		*Can log commands results, boolean results, floats, strings, pointers, etc
		*Can log using a native SCM syntax
		*Open source

	But we have some issues, nothing is perfect:
		*Not lightweight as SCMLOG is
		*Not thread safe  (this is not really a issue, since the script engine (and almost the entire game) runs in a single thread)
		*[III|VC] No CollectGlobalVariableIndex or CollectVariablePointer (game fault)
		*[III|VC] Many of the script engine stuff is inlined, and when inlined we wont have access to the values since no func is called.
		*[III|VC] CLEO hooks all commands with label as parameter, so... yeah, we cant show label params if CLEO is installed (not my fault again)
		*[SA]     CollectGlobalVariableIndex not hooked in DEViANCE 1.01EU
		

	******* PLEASE READ SCRLOG.INI EVEN IF YOU WON'T MODIFY ANYTHING THERE! *******
	******* ALSO NOTE THAT I HAVE NOTHING TO DO WITH THE ORIGINAL AUTHOR OF SCMLOG ******

-How to Install

	First of all, You need an ASI Loader.
		*ASI Loader: http://www.gtagarage.com/mods/show.php?id=21709

	If you already have a ASI Loader, then copy the files "scrlog.asi" and "scrlog.ini" into your game folder (III, VC or SA)
	Read SCRLOG.ini, even if you wont modify anything there.

-How to Use:
	Enter in the game and everything will be logged.
	When you exit the game, you can see a file "scrlog.log" in the same folder as scrlog.asi,
	Open it and all the logging is there!
	So how can I read this?

	First you may see something like:
	********************************************
	 script @SCNAME
	 Local variables dump:
	   @VARS
        ********************************************
	
	Here you have information about which script is running the commands right after this.
	@SCNAME is the script name (named with SCRIPT_NAME)
	@VARS are all the local variables of the script

	After that, you may or may not have commands before another script is registered.
	If there is no commands, it means the script is sleeping (WAIT command)
	
	The commands formats are as follow:
	XXXXXXXX&Y: [__ID] [[NOT]] @COMMAND_NAME @PARAMS     // @BOOLEAN_RESULT

	XXXXXXXX is the offset the script is at, reading the command.
	Y is the current value of the compare flag (CRunningScript::compareFlag), the flag that gives the script engine boolean results for GOTO_IF_FALSE
	__ID is the command id being read
	[[NOT]] is a possible value that may appear before the command name, it means the boolean result of the command must be inverted.
	@COMMAND_NAME is the native (or not) command name. If the command has no name, it will show COMMAND_#ID#
	@PARAMS are the params sent to the command
	@BOOLEAN_RESULT is the boolean result of the command (true of false), PLEASE NOTE THAT A NOT FLAG AFFECTS THIS RESULT!


-License
	The license used here is based on MIT License:

		 (c) 2013 - LINK/2012 - <dma_2012@hotmail.com>

		 Permission is hereby granted, free of charge, to any person obtaining a copy
		 of this plugin and source code, to copy, modify, merge, publish and/or distribute
		 as long as you leave the original credits (above copyright notice)
		 together with your derived work. Please not you are NOT permited to sell or get money from it

		 THE SOFTWARE AND SOURCE CODE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
		 EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
		 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
		 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
		 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
		 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
		 THE SOFTWARE.

-------------------------------

Thanks ;)
by LINK/2012 (dma_2012@hotmail.com)
