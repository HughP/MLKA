#Remy Willems

https://github.com/keyboardDrummer/keyboardlayoutoptimizer

>I yeah I guess I didn't complete moving the code from google code to GitHub. It's an old project of mine. It evaluates the quality of a keyboard layout by combining these two pieces of information:
>1. The speed it takes your fingers to move from one keyboard location to the next. This speed is measured by keylogging.
>2. How often a character 'x' occurs after a character 'y' in a given text. The program can scan text files for you to get this information.
>The assumption here is that the time it takes to move to a location on the keyboard is influenced mostly by the key pressed before it, but not so much the key pressed before that. Also I'm not sure to what extend I'm taking things like shift+key into account. Probably not so much.
>The program has a few built in keyboard layouts, namely qwerty and dvorak. You can also experiment by creating new keyboard layouts and evaluating those.
>
>The main feature of the program is to use a form of hillclimbing to start at one keyboard layout and find a better one. The 'mutator' function that the hillclimber uses is so that first it will swap 2 keys, and if that does not provide a better sample is will permutate 3 keys, then 4, etc. So in theory the program can find a great layout. In practice however it grinds to a halt at some point. It works to some degree because it usually places keys on the homerow in the same location, even if you start with different random layouts. Also, this placement is very similar to Dvorak's.
