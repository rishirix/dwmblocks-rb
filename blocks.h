/* dwmblocks config.h
 * Palette: 17BEBB, 2E282A, CD5334, EDB88B, FAD8D6
 * Requires dwm patched with status2d for colors to render.
 *
 * USAGE:
 * 1. Open your dwmblocks source folder
 * 2. Replace config.h with this (or merge the "blocks" array + delimiter)
 * 3. Save the block scripts below into ~/.local/bin/statusbar/ (or wherever)
 *    and chmod +x them
 * 4. sudo make clean install
 * 5. Restart dwmblocks (killall dwmblocks; dwmblocks &)
 */

static const Block blocks[] = {
	/*Icon*/  /*Command*/                  /*Update Interval*/  /*Update Signal*/
	{"\uf028",       "volume.sh",                 5,                   10},
	{"\uf240",       "battery.sh",                30,                  0},
	{"\uf1eb",      "wifi.sh",                   10,                  0},
	{"",       "clock.sh",                  30,                  0},
};

/* delimiter between blocks, colored with the dim/muted tone */
static char delim[] = "^c#5c5457^ | ^d^";
static unsigned int delimLen = 16;
