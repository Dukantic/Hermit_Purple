//Modify this file to change what commands output to your statusbar, and recompile using the make command.

static const Block blocks[] = {
    /* Icon       Command                                       Update Interval    Update Signal */
	{"Mem:", "free -h | awk '/^Mem/ { print $3\"/\"$2 }' | sed s/i//g",	30,		0},
    {"", "date '+%Y-%m-%d %H:%M:%S'",                           60,                1},
    {"", "acpi | awk '{print $4}'",                             30,                2},
    {"", "amixer get Master | grep -o '[0-9]*%'",               10,                3},
	{"", "date '+%b %d (%a) %I:%M%p'",					5,		0},
};



//sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
