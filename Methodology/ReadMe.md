#Methodology
_This section (or folder) discusses and contains the tools used in this project and other projects in the assessment of the keyboard arrangement problem._

##Software and Applications
The folder Software and applications used contains software used to obtain the results in this project.
It is further divided up into three sections:

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
_This section considers the physical measurement of keyboards and the metrics of analyzing user behavior with those keyboard layouts._

####Keyboard key centers
* The distance between key centers is called pitch. Generally this is considered 19mm. All of my apple keyboards maintain this distance. More resources:
 * http://www.ergonomicsmadeeasy.com/pages/keypitch
 * http://www.emperorlinux.com/systemmatrix/keyboards/
 * http://web.archive.org/web/20090630115240/http://www.technewsworld.com/story/67444.html

It is reported in the Grey Literature that this 19mm distance is a sacred rule. 

#####Paterson Method
Key centers are important for computing distance.
For the center points in my diagrams and in my numbers these were computed in the following way:
A the keys were taped with scotch tape in the down position, a pice of see-though graph paper was lain out over the keyboard and the key position was traced over the keys. The center point for the keys on the left side was computed my drawing perpendicular lines though the corner points of the keys. The stencil measurements were replicated in OmniGraffle. OmniGraffle is used to create the spacing lines and various diagrams of keyboard layouts.
![Keyboard Centers](/Methodology/Images/Apple-QWERTY-with-crosses.jpg)

####Measureing finger travel distance
* http://patorjk.com/blog/2009/07/12/typing-distance/
* http://colemak.com/Compare
* See this too: https://github.com/michaeldickens/Typing/issues/18

####Weighted assesments
* https://github.com/michaeldickens/Typing/blob/master/doc/Fitness
* https://github.com/michaeldickens/Typing#adding-your-own-physical-keyboard
* http://minuum.com/model-your-users-algorithms-behind-the-minuum-keyboard/
* http://colemak.com/Compare

###Keyboard Shape + Ergonomics
* Monty, Robert W., Harry L. Snyder & Gerald G. Birdwell. 1983. Keyboard Design: An Investigation of User Preference and Performance. Proceedings of the Human Factors and Ergonomics Society Annual Meeting 27.3: 201-5. http://pro.sagepub.com/content/27/3/201.abstract
* Nelson, John E., Delia E. Treaster & William S. Marras. 2000. Finger motion, wrist motion and tendon travel as a function of keyboard angles. Clinical Biomechanics 15.7: 489-98. http://www.sciencedirect.com/science/article/pii/S0268003300000115
* O'Brien, Marita A. 2004. Keyboard Shape and Arrangement Effects on Keyboard Design Elements. Proceedings of the Human Factors and Ergonomics Society Annual Meeting 48.18: 2147-51. 
* Rempel, David, Alan Barr, David Brafman & Ed Young. 2007. The effect of six keyboard designs on wrist and forearm postures. Applied Ergonomics 38.3: 293-8. http://www.sciencedirect.com/science/article/pii/S0003687006000706
* Smith, Michael J., et al. 1998. Effects of a Split Keyboard Design and Wrist Rest on Performance, Posture, and Comfort. Human Factors: The Journal of the Human Factors and Ergonomics Society 40.2: 324-36. http://hfs.sagepub.com/content/40/2/324.abstract
* Swanson, Naomi G., Traci L. Galinsky, Libby L. Cole, Christopher S. Pan & Steven L. Sauter. 1997. The impact of keyboard design on comfort and productivity in a text-entry task. Applied Ergonomics 28.1: 9-16. http://www.sciencedirect.com/science/article/pii/S000368709600052X
* Gilad, Issachar & Shlomit Harel. 2000. Muscular effort in four keyboard designs. International Journal of Industrial Ergonomics 26.1: 1-7. http://www.sciencedirect.com/science/article/pii/S0169814199000578
* van Galen, Gerard P., Hanneke Liesker & Ab de Haan. 2007. Effects of a vertical keyboard design on typing performance, user comfort and muscle tension. Applied Ergonomics 38.1: 99-107. http://www.sciencedirect.com/science/article/pii/S0003687006000196
* Duncan, Joan & D. Ferguson. 1974. Keyboard Operating Posture and Symptoms in Operating. Ergonomics 17.5: 651-62.  <Accessed: 2013/07/02>. http://dx.doi.org/10.1080/00140137408931404
* Terzuolo, C. A. & P. Viviani. 1980. Determinants and characteristics of motor patterns used for typing. Neuroscience 5.6: 1085-103. http://www.sciencedirect.com/science/article/pii/0306452280901888


####Measuring finger plunge
The plunge (this might sometimes be called the "stroke", "action travel" or just "action") that a key takes is supposed to be between 2mm and 4mm 
* ISO 9241-4 says "The key displacement shall be between 1,5mm and 6,0mm. The preferred key displacement should be between 2,0mm and 4,0mm." The ISO key travel recommendations seem to be derived from a 1969 paper that recommended travel between 0.05 inches (1.3mm) and 0.25 inches (6.4mm): Kinkead, R. and B. Gonzales, Human Factors Design Recommendations for Touch-operated Keyboards. Final Report (Document 12091-FR), Minneapolis Honeywell, Inc., 1969. [Quoted from here](http://deskthority.net/posting.php?mode=quote&f=2&p=8936&sid=e2ced327e711e57474d617268e9d5600)

####Measuring key seperation spacing (vertical and horizontal)
* Pereira, Anna, et al. 2013. The Effect of Keyboard Key Spacing on Typing Speed, Error, Usability, and Biomechanics: Part 1. Human Factors: The Journal of the Human Factors and Ergonomics Society 55.3: 557-66. http://hfs.sagepub.com/content/55/3/557.abstract
* Pereira, Anna, Chih-Ming Hsieh, Charles Laroche & David Rempel. 2014. The Effect of Keyboard Key Spacing on Typing Speed, Error, Usability, and Biomechanics, Part 2: Vertical Spacing. Human Factors: The Journal of the Human Factors and Ergonomics Society 56.4: 752-9. http://hfs.sagepub.com/content/56/4/752.abstract

####Keyboard angle
* Nelson, John E., Delia E. Treaster & William S. Marras. 2000. Finger motion, wrist motion and tendon travel as a function of keyboard angles. Clinical Biomechanics 15.7: 489-98.
* Effect on Operator Performance at Thin Profile Keyboard Slopes of 5°, 10°, 15°, and 25° http://pro.sagepub.com/content/26/5/430.short


####Measuring Character Frequency
_There are several tools for this. The following or some I have found._
* List for the frequencies of words in several languages: http://letterfrequency.org/#english-language-letter-frequency
* [Daniel Borkman](http://web.archive.org/web/20120215152400/http://daniel.netsniff-ng.org/) created a java application to count letter frequencies. A copy can be found [in the interent archive](http://web.archive.org/web/20120716051349/http://www.imn.htwk-leipzig.de/~dborkman/offtopic/letter_frequency/letter.html) as of 07. April 2015 and can be found in this repo [under applications and programs](/Methodology/applications-andprograms/).
* [Letter Frequency Counter](http://millikeys.sourceforge.net/freqanalysis.html) written in Visual Basic 6. It requires the VB6 runtime. Open Source via Source Forge.
* Follow up experiment to the landmark English frequency analysis. http://norvig.com/mayzner.html
* Michael Dickens on Letter Frequency in several languages: http://mdickens.me/typing/letter_frequency.html
* [LetterMetter](http://www.type-applications.com/site/lettermeter_info.php) by [Typotheque](https://www.typotheque.com/help/technical_issues/where_has_the_lettermeter_gone) is an application which works in OS X 10.6 (but not above).

* Dvorak's study was actually founded on two separate sources one of which he leans on heavily is the work of Hoke. Hoke in turn leans on someone else. Its good to consult Hoke chapter 1.
 * Hoke, Roy Edward. 1922. The Improvement of Speed and Accuracy in Typewriting. Baltimore, Md.: Johns Hopkins Press.

#####Character Frequency
_Several resources about character frequency._
* http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.394.1855&rep=rep1&type=pdf
* http://www.letterfrequency.org/
* http://norvig.com/mayzner.html



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

##Text Processing
Since we are not dealing with live user data, corpus texts were used and counted for generated key strokes.

Each text was acquired form its source as indicated. Each text was cleaned as indicated. Often this meant removing Scripture format markings (SFM). SFM is a dialect of standard format marking. Chapter and verse numbers, section headings and chapter titles were also removed. This served to equate the texts on the bases of the content of the translated text. Titles were removed because not all texts acquired had titles. Copies of keyboard layouts used to produce the text were collected. An analysis of dead keys on each keyboard was conducted. Diagrams of keyboards were created in OminGraffle

Each text was counted several ways. cleaned texts were first UnicodeCCount a perl character counter. Each text was counted several times, each time in different ways. Flags -u -f were used to get "raw" counts based of frequency and sort the counts in different ways (see UnicodeCCount help for details). Flags -c and -d were used to get counts where data types were not regularized. For instance, some characters have composites but others do not with the same diacritic. By separating composite characters I was able to better count the number of key strokes used to create the texts.

To create finger stroke counts characters with diacritics were treated as digraphs, replacing orthographic characters with the QWERTY keyboard equivalent. This allows for keyboard specific based analysis and visualization. It allows for optimization of location when maintaining the dead key combinations already used. However, this method does not optimize based on single orthographic character.

###African language data
The following transformations were done manually on the african data.
```
<< --> "
>> --> "
! --> !!
- --> --
' --> ''
; --> ;;
ọ --> ;o
ụ --> ;u
Ọ --> ;O
ẹ --> ;e
ị --> ;i
á --> 'a
Ụ --> ;U
 --> 'e
 --> ;u
 --> `i
è --> `e
 --> -e
ù --> `u
 --> `a
ī --> -i
ò --> `o
ì --> 'i
Á --> 'A
Ù --> `U
ǹ --> `n
î --> ^i
 --> `A
 --> 'o
 --> -a
 --> &e
 --> `m
 --> ;E
ɗ --> ;d
 --> `;O
 --> Removed text in not on ezza (There was a short footnote from the original text in english which needed to be removed. It looked like a translation note.)
 --> ;a
 --> ;A
ɓ --> ;b
Ɗ --> ;D
 --> 'E
 --> -u
Ū --> -U
 --> -o
 --> ^a
 --> `E
 --> -I
 --> -O
Ǹ --> `N
ṅ --> !n
 --> gb



```

Unicode|Character|Quantity|Converted to
----|----|----|----
U+000A|'LINE FEED (LF)'|121|
U+0020|'SPACE'|16166|
U+0021|!|10|!!
U+0027|'|1411|''
U+002A|*|10|
U+002C|,|1157|
U+002D|-|666|
U+002E|.|810|
U+003A|:|52|
U+003B|;|81|;;
U+003C|<|84|<< --> "
U+003E|>|84|>> --> "
U+003F|?|118|
U+0041|A|265|
U+0042|B|5|
U+0043|C|99|
U+0044|D|1|
U+0045|E|88|
U+0047|G|22|
U+0048|H|2|
U+0049|I|145|
U+004A|J|17|
U+004B|K|157|
U+004C|L|18|
U+004D|M|39|
U+004E|N|85|
U+004F|O|99|
U+0050|P|2|
U+0052|R|6|
U+0053|S|10|
U+0054|T|36|
U+0055|U|120|
U+0056|V|28|
U+0057|W|14|
U+0059|Y|24|
U+005A|Z|4|
U+0061|a|8323|
U+0062|b|1888|
U+0063|c|592|
U+0064|d|840|
U+0065|e|4675|
U+0066|f|326|
U+0067|g|1834|
U+0068|h|2539|
U+0069|i|6332|
U+006A|j|313|
U+006B|k|2851|
U+006C|l|1516|
U+006D|m|1960|
U+006E|n|5392|
U+006F|o|2370|
U+0070|p|549|
U+0072|r|1365|
U+0073|s|1086|
U+0074|t|1298|
U+0075|u|4436|
U+0076|v|224|
U+0077|w|1434|
U+0079|y|1729|
U+007A|z|325|
U+00A0|'NO-BREAK SPACE'|243
U+00C0|À|7|\`A
U+00C1|Á|3|'A
U+00C8|È|1|\`E
U+00C9|É|2|'E	
U+00CC|Ì|1|\`I
U+00D2|Ò|6|\`O
U+00D9|Ù|2|\`U
U+00E0|à|26|\`a
U+00E1|á|34|'a
U+00E2|â|1|
U+00E8|è|134|\`e
U+00E9|é|42|'e
U+00EC|ì|83|\`i
U+00ED|í|13|'i
U+00EE|î|1|
U+00F2|ò|12|\`o
U+00F3|ó|3|'o
U+00F9|ù|38|\`u
U+00FA|ú|40|'u
U+0101|ā|87|
U+0113|ē|99|
U+011B|ě|1|
U+012B|ī|8|
U+014D|ō|1|
U+016A|Ū|1|
U+016B|ū|4|
U+018A|Ɗ|5|'D
U+01F8|Ǹ|2|\`N
U+01F9|ǹ|1|\`n
U+0253|ɓ|17|'b
U+0257|ɗ|269|'d
U+0300|̀|2|
U+0323|̣|10|
U+0331|̱|978|
U+0355|͕|41|
U+1E45|ṅ|7|
U+1EB8|Ẹ|43|
U+1EB9|ẹ|1051|
U+1ECB|ị|60|
U+1ECC|Ọ|104|;O
U+1ECD|ọ|1413|;o
U+1EE4|Ụ|13|;U
U+1EE5|ụ|499|;u
U+201C|“|14|"
U+201D|”|14|"
