//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
    /* Icon      Command                                   Update Interval   Update Signal */
    {"  ", "", 3600, 0},
    {"  ",     "mpstat 1 1 | awk '/Average/ {print 100 - $NF\"%\"}'",1,0},
    { "  ",    "free -h | awk '/^Mem:/ { print $3\"/\"$2 }'",  1,         0 },
    { "󰁹 ", "cat /sys/class/power_supply/BAT0/capacity | awk '{ print $1\"%\" }'", 1, 0 },
    { "󱄠 ",    "pamixer --get-volume-human",                  1,          0 }, // Utilise pamixer ici
    { "󰥔 ",   "date '+%H:%M'",                               60,         0 },
    { " ",   "date '+%Y-%m-%d'",                            60,       0 },
};//sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
