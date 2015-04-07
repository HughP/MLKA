#Methodology
_This section (or folder) discusses and contains the tools used in this project and other porjects in the assement of the keyboard arangement problem._

##Software and Applications
The folder Software and applications used contains software used to obtain the results in this project.
It is further devided up into three sections:

1. Software used
  * Project code created - [Issues in Programming](/Methodology/PythonHelps.md)
  * Project code borrowed

2. Software stashed
3. Software reviewed or links to other software solutions


###Applications related keyboard analysis
_This section includes mostly a description of software used in various keyboard layout experiments. It also includes where possible a copy of the software and a link to where it was originally located._
[As a subsection here](/Methodology/applications-and-programs/ReferencesAndLinks.md)

##Metrics and Measurements
###Metrics of keyboard analysis
_This section considers the physical measurement of keyboards and the metrics of analysing user behavior with those keybaord layouts._

####Keyboard key centers
* The distance between key centers is called pitch. Generally this is considered 19mm. All of my apple keyboards maintain this distance. More resources:
 * http://www.ergonomicsmadeeasy.com/pages/keypitch
 * http://www.emperorlinux.com/systemmatrix/keyboards/
 * http://web.archive.org/web/20090630115240/http://www.technewsworld.com/story/67444.html

It is reported in the Grey Literature that this 19mm distance is a sacred rule. 

Key centers are important for computing distance.


####Keyboard angle
* Nelson, John E., Delia E. Treaster & William S. Marras. 2000. Finger motion, wrist motion and tendon travel as a function of keyboard angles. Clinical Biomechanics 15.7: 489-98.
* Effect on Operator Performance at Thin Profile Keyboard Slopes of 5°, 10°, 15°, and 25° http://pro.sagepub.com/content/26/5/430.short

####Measureing finger travel distance
* http://patorjk.com/blog/2009/07/12/typing-distance/
* http://colemak.com/Compare

####Weighted assesments
* https://github.com/michaeldickens/Typing/blob/master/doc/Fitness
* https://github.com/michaeldickens/Typing#adding-your-own-physical-keyboard
* http://minuum.com/model-your-users-algorithms-behind-the-minuum-keyboard/
* http://colemak.com/Compare


####Measuring finger plunge
The plunge (this might sometimes be called the "stroke", "action travel" or just "action") that a key takes is supposed to be between 2mm and 4mm 
* ISO 9241-4 says "The key displacement shall be between 1,5mm and 6,0mm. The preferred key displacement should be between 2,0mm and 4,0mm." The ISO key travel recommendations seem to be derived from a 1969 paper that recommended travel between 0.05 inches (1.3mm) and 0.25 inches (6.4mm): Kinkead, R. and B. Gonzales, Human Factors Design Recommendations for Touch-operated Keyboards. Final Report (Document 12091-FR), Minneapolis Honeywell, Inc., 1969. [Quoted from here](http://deskthority.net/posting.php?mode=quote&f=2&p=8936&sid=e2ced327e711e57474d617268e9d5600)

###Notes and formulas from academic papers on text input
[Notes](/Methodology/notes.md)

###Notes and formulas from academic papers on information theory
[Information Theory](/Theory/InformationTheory.md)


##Keyboard composition
* Hardware controller codes
* keycodes
* character codes
* encoded characters
* Keyboard key press pressure
* Key size
* key spacing
* keyboard tilt
* visual characters on the key
 * See: The Design of Keyboard Templates http://pro.sagepub.com/content/35/6/486.short
* Keyboard layout (arrangement of characters on the keyboard)
* Number of keys on the keyboard (ISO vs. ANSI vs. JIS)
