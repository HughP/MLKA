##Idology
_This section is for links to resources which discuss the reasons that a keyboard layout is arranged the way it is._

Perhaps the best way to start this discussion off is to layout some history.

As a rundown, there are three names which seem to come up in the computer developer side of the keyboard optimization world. These names never make it to the academic literature as far as I can tell. These names are: Michael Capewell, Michael Dickens, and David Norman. There are some other names too like: Ted Lilley, David Piepgrass. The previously mentioned names all deal with keyboard layouts. However, Bill Buxton is a real UX designer: http://www.billbuxton.com . His site is worth the quote and the time to read.
* Michael Capewell Alternate Keyboard Layouts http://www.michaelcapewell.com/projects/index.htm ; http://www.michaelcapewell.com/projects/keyboard/index.htm
* [Editorial: Moving from QWERTY to QWERTZ on short notice](http://www.neowin.net/news/editorial-moving-from-qwerty-to-qwertz-on-short-notice)
* [Discussion on Ukelele forum](https://groups.google.com/forum/#!msg/ukelele-users/DQnnVANOF0c/Fvwf-UMBg_AJ)
* https://mathematicalmulticore.wordpress.com/the-keyboard-layout-project/
* http://mkweb.bcgsc.ca/carpalx/
* Michael Dickens - Introducing the Thumb Keys https://mathematicalmulticore.wordpress.com/category/keyboards/
* This forum talks about the comparison of keyboards. https://geekhack.org/index.php?topic=48292.msg1309062#msg1309062
* Discussion of the historical nature of the return key: http://deskthority.net/wiki/Return_key.
* Capewell improvement of the Dvorak keyboard: http://www.michaelcapewell.com/projects/keyboard/layout_capewell-dvorak.htm
* Discussion of the colemak keyboard: http://colemak.com/
 * Colemak keyboard layout comparison: http://colemak.com/Compare
* Comparison of the Norman layout with Qwerty: https://normanlayout.info/compare
* http://www.makeuseof.com/tag/a-history-of-keyboard-layouts-is-qwerty-lagging-behind/
* http://history-computer.com/ModernComputer/Basis/keyboard.html
* http://www.xpertkeyboard.com/history.htm
* http://www.daskeyboard.com/blog/typing-through-time-the-history-of-the-keyboard/
* Workman: https://viralintrospection.wordpress.com/2010/09/06/a-different-philosophy-in-designing-keyboard-layouts/
* See how it works: http://help.keyman.com/developer/9.0/docs/tutorial/tutorial_keyboard_6.php

####Copy over discussion from
* https://code.google.com/p/amphetype/wiki/Backstory
* https://mathematicalmulticore.wordpress.com/2008/05/26/how-hard-to-type/
* https://mathematicalmulticore.wordpress.com/the-keyboard-layout-project/


##Character Frequency
_Several resources about character frequency._
* http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.394.1855&rep=rep1&type=pdf
* http://www.letterfrequency.org/
* http://mdickens.me/typing/theory-of-letter-frequency.html
* http://norvig.com/mayzner.html


##Website based apps for teaching typing
* http://www.ratatype.com/
* http://play.typeracer.com/

##Lists of Keyboard Layouts
* http://mdickens.me/typing/alternative_layouts.html
* http://www.minimak.org/download/
* http://web.archive.org/web/20050306181446/http://www.pvv.org/~hakonhal/keyboard/
* http://web.archive.org/web/20100125112901/http://www.pvv.org/~hakonhal/main.cgi/keyboard/arensito_devel
* http://web.archive.org/web/20091027065630/http://geocities.com/smozoma/projects/keyboard/layout_capewell.htm
* http://mtgap.bilfo.com/completed_keyboard.html
* Steno: http://plover.stenoknight.com/
* http://www.michaelcapewell.com/projects/keyboard/index.htm#The_Coming_Capewell_Layout_
* http://web.archive.org/web/20091027065630/http://geocities.com/smozoma/projects/keyboard/layout_capewell.htm
* http://web.archive.org/web/20121101022630/http://mtgap.bilfo.com/alternative_layouts.html
* http://shenafu.com/layout.php

##My most common OS X short cuts
_Not necessarily in order of frequency of use._
* ⌘ z - undo
* ⌘ x - cut
* ⌘ c - copy
* ⌘ v - paste
* ⌘ ⇧ ⌃v - past with formatting
* ⌘ q - quit
* ⌘ s - save
* ⌘ , - preferences
* ⌘ n - new
* ⌘ ⇧ n - new folder
* ⌘ d - duplicate file
* ⌘ f - find
* ⌘ m - minimize finder window
* ⌘ a - select all
* ⌘ w - close window ︎/ close tab
* ⌘ ⎇ w - close all windows
* ⌘ r - reload/refresh browser URL
* ⌘ t - New tab or Text Palette 
* ⌘ o - open
* ⌘ p - print
* ⌘ b - bold
* ⌘ i - get info / or italic
* ⌘ u - underline
* fn ⌫ - delete going the other way
* ⌘ ⎇ 1 - iTunes song window
* ⌘ k - open server
* ⌘ tab - change/cycle applications
* ⌘ ⇧ tab  - change/cycle applications
* ⌘ \` - change/cycle windows in application
* ⌘ ⇧ \` - Cycle the other way
* ⌃ click - I use this with my mouse a lot.
 Add ↩ to omnigraphel return key


#What to count from Michael Dickens
This document describes in depth how fitness is calculated.

##GENERAL
The program contains a list of digraphs and gives the frequency of each digraph. Here is the pseudocode for how a layout is scored. 

For each digraph: 
*	calculate the fitness for this individual digraph
*	multiply that by the digraph's frequency
*	add to total fitness

The program also has a list of characters, which are used to calculate finger travel distance.

The process of calculating the fitness for a single character or digraph requires calculating a number of independent factors.

###DISTANCE
This measure indicates how far one's fingers must travel, taking into account that some areas of the keyboard are more difficult to reach than others. For example, the bottom row counts as more effort than the top row.

###FINGER WORK
This adds a penalty when a finger is overloaded. The overload point depends on finger strength: for the index finger it is much higher than for the pinky. This does not add any points to the total fitness unless a finger's work exceeds a particular point, so it is possible for finger work to have a score of 0. The primary use of this measure is to prevent the pinky and ring finger from tiring.

###ROLLS
A roll is when adjacent keys in the same row are typed in succession. Inward rolls are favorable and outward rolls should be avoided.

###ROW CHANGE
When two keys are typed consecutively on the same hand and different rows. There are two special types of row change.

* _Hand Smooth_: When the two keys are on the index and middle finger where the middle finger is above the index. This is easier than other kinds of row change.
* _Hand Warp_: When the two keys are adjacent, and not Hand Smooth. This is harder than other kinds of row change.

###HOME JUMP
When two keys are typed consecutively on the same hand and jump over the home row. There are two special types of home jump.
* _Double Jump_: Jumping over at least two rows adds an additional penalty.
* _Hame Jump Index_: When one of the keys lies under the index finger on the bottom row, the cost is significantly reduced because such jumps are significantly easier.

###RING JUMP
When two keys are typed consecutively on the same hand where one is on the pinky and the other is on the middle finger. This move is considered to be difficult because of the ring finger's minimal dexterity.

###TO CENTER/TO OUTSIDE
When two keys are typed consecutively on the same hand where one is in the center column (or an outside column) and the other is on one of the main columns.
