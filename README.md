# Cool TTY

CTTY is a simple script that allows the user to change the default colors in any given TTY.
It does this by overriding the default color values.

Now, we can only define 16 destinc colors, minus 2 that are sacrificed for fore- and background.
Curretnly there are only 2 schemes to choose from, though I will add more as time goes on.

Contributions are also welcomed c:

The script should work on any Linux system, BSD is untested but I'm 80% sure that it should work just fine.


Here are some examples:
![Before](https://github.com/Stargirl-chan/ctty/blob/master/default.png)

![Color scheme 1](https://github.com/Stargirl-chan/ctty/blob/master/scheme_1.png)

![Color scheme 2](https://github.com/Stargirl-chan/ctty/blob/master/scheme_2.png)

## How to use

Clone the repo, make the script executable and run it from any TTY
```
git clone https://github.com/Stargirl-chan/ctty.git
cd ctty
chmod +x ctty.sh
```

## Other plans

The script at its current state is only able to change the color of any given terminal and it needs to be invoked everytime after a reboot because it is not persistent.
My plans are making it somewhat persistent between reboots and also implementing the ability to change the default TTY font.
