
//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{"", "price.py", 15, 0},
	/*{"", "volume", 5,4},*/
	{"", "battery", 5,3},
	{"", "brightness", 0,11},
	{"", "volume", 0,10},
//	{"", "emgpackages", 86400, 20},
	{"", "internet", 5,4},
	//{"", "nettraf", 1,16},
//	{"", "memory", 20, 13},
	{"", "cpu", 5,12},
	/*{"", "memory", 5,3},*/
	/*{"", "date '+%b %d (%a) %I:%M%p'",					5,	0},*/
	{"", "kbselect", 0, 30},
	{"", "clock", 60, 1},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " | ";
static unsigned int delimLen = 3;
