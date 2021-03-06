#define PATH(name)                      "/home/ludwig/pub/source/dwmblocks/blocks/"name

/* DELIMITERENDCHAR must be less than 32.
 * At max, DELIMITERENDCHAR - 1 number of clickable blocks will be allowed.
 * Raw characters larger than DELIMITERENDCHAR and smaller than ' ' in ASCII
   character set can be used for signaling color change in status.
 * The character corresponding to DELIMITERENDCHAR + 1 ('\x0b' when
   DELIMITERENDCHAR is 10) will switch the active colorscheme to the first one
   defined in colors array in dwm's config.h and so on.
 * If you wish to change DELIMITERENDCHAR, don't forget to update its value in
   dwm.c and color codes in your pathu programs. */
#define DELIMITERENDCHAR                10

/* If interval of a block is set to 0, the block will only be updated once at
   startup.
 * If interval is set to a negative value, the block will never be updated in
   the main loop.
 * Set pathc to NULL if clickability is not required for the block.
 * Set signal to 0 if both clickability and signaling are not required for the
   block.
 * Signal must be less than DELIMITERENDCHAR for clickable blocks.
 * If multiple signals are pending, then the lowest numbered one will be
   delivered first. */

/* pathu - path of the program whose output is used as status text of the block
           (output of the program should end in a null or newline character)
 * pathc - path of the program used for handling clicks on the block */

/* 1 interval = INTERVALs seconds, INTERVALn nanoseconds */
#define INTERVALs                       1
#define INTERVALn                       0

static Block blocks[] = {
/*      pathu                           pathc                           interval        signal */
        { PATH("internet.sh"),          NULL,                             10,             5},
        { PATH("clock.sh"),          NULL,                             30,             4},
        { PATH("calendar.sh"),          NULL,                          30,             1},
        { PATH("volume.sh"),            NULL,     		  	0,             2},
        { PATH("battery.sh"),           NULL,      		 	5,             3},
        { NULL } /* just to mark the end of the array */
};

/* default delimiter string */
#define DELIMITER                       "   "
