# Pomodoro.sh
Just a simple timer that plays music

To install, simply execute `./install.sh`.

Alternatively, you can set where the aliases are written to using the
ALIASES\_FILE environment variable: `ALIASES_FILE=<path> ./install.sh`

The file `~/.alarm_sound` will be played when the time is up, this file will
be linked to a music file you'll have to select at startup if it doesn't exist.
To change the music, simply remove this file and start `pomodoro` again.

## Usage

Set a timer: `pomodoro <number of minutes>`

Set a default 20 mins timer: `pomodoro`

Stop the started timer: `stop_pomodoro`

## Dependencies

Requires `zenity` and `mpv` to run
