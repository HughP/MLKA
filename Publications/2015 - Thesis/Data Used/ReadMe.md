#Data Used
_This file presents the folders of data in this folder. It tells the story of the data used in this thesis. There are five use cases in this thesis. Each one has its own folder._
##Folders

1. [`/USA Use Case`](/Publications/2015%20-%20Thesis/Data%20Used/1.%20USA%20Use%20Case)
 * Navaho [[`nav`](http://www.ethnologue.com/language/nav)] - Has wikipedia corpus
 * English [[`eng`](http://www.ethnologue.com/language/eng)] - Has wikipedia corpus
2. [`/Mexico Use Case`](/Publications/2015%20-%20Thesis/Data%20Used/2.%20Mexico%20Use%20Case)
 * Me'phaa [[`tcf`](http://www.ethnologue.com/language/tcf)]
 * Chinantec [[`cso`](http://www.ethnologue.com/language/cso)]
 * Spanish	[[`spa`](http://www.ethnologue.com/language/spa)] - Has wikipedia corpus
3. [`/Nigeria Use Case`](/Publications/2015%20-%20Thesis/Data%20Used/3.%20Nigeria%20Use%20Case)
 * Ezaa [[`eza`](http://www.ethnologue.com/language/eza)]
 * Okphela [[`atg`](http://www.ethnologue.com/language/atg)]
 * Cishingini [[`asg`](http://www.ethnologue.com/language/asg)]
 * Bekwarra [[`bkv`](http://www.ethnologue.com/language/bkv)]
 * Igbo [[`ibo`](http://www.ethnologue.com/language/ibo)] - Has wikipedia corpus
4. [`/Europe Use Case`](/Publications/2015%20-%20Thesis/Data%20Used/4.%20Europe%20Use%20Case)
 * German [[`deu`](http://www.ethnologue.com/language/deu)] - Has wikipedia corpus
 * French [[`fra`](http://www.ethnologue.com/language/fra)] - Has wikipedia corpus
 * Italian [[`ita`](http://www.ethnologue.com/language/ita)] - Has wikipedia corpus
5. [`/Mongolia Use Case`](/Publications/2015%20-%20Thesis/Data%20Used/5.%20Mongolia%20Use%20Case)
 * Mongolian [[`khk`](http://www.ethnologue.com/language/khk)] - Has wikipedia corpus
 * Russian [[`rus`](http://www.ethnologue.com/language/rus)] - Has wikipedia corpus

##Data types
Inside each folder are several pieces of data.

1. There is a text from the Christian New Testament. - The book of James. This is used as a parallel corpus across all the languages. The detials (such as provonance and how it was cleaned) for each text sample are indicated with the text. The original text may apear in several forms (and files) following the iteration of cleaning as it was processed.
2. There is a download of Wikipedia for the language if there was a matching Wikipedia for the language. The whole file is included if the text file was small enough to fit into github. If the text file was too large then there is just a statistical summary. The Methodology for cleaning each wikipedia corpus is included in the Wikipedia data folder.
3. There are several keyboard layouts for each language. These come in two clases:
 * Keyboards that have been presented or suggested in the literature.
 * Keyboards that I have suggested based on text samples.
 
 There are serval things inculded for each keyboard.
  * A textual description of how it functions. Including dead-keys ordering and character values.
  * A technical description of the characters it supports.
  * A visualization of the first two states (Base & Shift). This indicates where the dead keys are, if they exist.
  * A heat map visualization for the sample text from James.
  * A heat map visualization of the entire text from James.
  * A fitness score for each keyboard. Based on James, and again based on the Wikipedia corpus. This fitness score includes:
   * Total number of keystrokes with the current layout
   * right hand v.s. left hand (I started an interesting [calculator in Google Docs](https://docs.google.com/spreadsheets/d/1B6rpynT1MsrPjLi5seWRGMWy5qq9sn-DnWS-sTHRp2k/edit?usp=sharing). )
   * finger load per finger 0-9
   * right - left balance
   * use of punctuation
   * Characters not used in the text
   * Percentage of use
   * Combinational use of characters
   * distance traveled
4. Statistics for the texts in each language.
 * Statistics for James.
 * Statsitics for Wikipedia corpus.
   * Summary of characters used in the text
   * Total number of characters in the text
   * Total number of words in the text
   * Total number of different characters used in the text
   

###Workflow For text processing
For data from both Wikipedia and the various coppies of the book of James the following steps were followed for each of the texts used.

####For Wikipeida Texts
1. Daily dumps of each Wikipedia instance by language can be found at the following location: http://dumps.wikimedia.org/backup-index.html
2. The nightly dump for each language was downloaded and processed with the following script titled wikiextractor: https://github.com/attardi/wikiextractor
3. Following the processing with the first script, a second script was used to further clean up the file. This script was by Matt Stave and is avaible here:
 The purpose here was to remove HTML and XML characters which were not originally typed in the editing process of Wikipeida.

####For Texts of the book of James
1. Copies and permissions were obtained from various sources as indicated in the texts.
2. Manual text clean up was conducted as indeciated per text.
3. A day of rest was had. Proceeded directly to step #4.

####For all texts

4. Each file was inspected visually to determine if it was appropiatly cleaned. Any glarring anomolies were removed manually and noted.
5. The text was counted with UnicodeCCount. A table was formed from the output of UnicodeCCount.
6. Word counts were considered based on the number of occurances of <U+000A> ''.
7. A mapping (of Unicode characters to ISO 9555 key positions) of the target keyboard was produced.
8. A mapping of Unicode characters to QWERTY key equivelents was produced.
9. A manual search and replace was done to create a QWERTY equivilent model.
10. The text was processed with the xyz script from Matt Stave.
11. The output from step #9 was fed to Michael Dickens' application to produce an example optimized keyboard layout.
12. The output from step #9 was fed to Michael Dickens' application to evaluate the existing model keyboard layout.
13. The output from step #9 was fed to heatmap.js script and an image was created of the whole text, and of the sample text.
14. Total character count for the text was produced based on the counts of UnicodeCCount.
15. Percentages were produced based on counts in step # 14.
16. Distance traveled was computed based on Patrick's script.
17. Cognitive disruption was computed.
18. Average distance per word was computed for each text.


##Various wikipedia stats
_These are some of the stats from some of the languages in this project._
The purpose of comparing these is to give an estimate of how accurate James is as a corpus.

* Statistics at 12:00, 11 May 2015 (UTC) from: http://meta.wikimedia.org/wiki/List_of_Wikipedias

№|Language|Language (local)|Wiki|Articles|Total|Edits|Admins|Users|Active Users|Images|Depth
---|---|---|---|---|---|---|---|---|---|---|---
1|English|English|en|4,867,179|36,240,808|770,553,089|1,347|25,080,569|128,694|853,909|883
4|German|Deutsch|de|1,813,667|5,173,255|147,307,093|250|2,160,926|19,395|144,125|98
5|French|Français|fr|1,622,055|7,457,284|117,119,502|167|2,214,483|16,192|46,935|203
7|Russian|Русский|ru|1,219,843|4,272,535|82,976,047|88|1,656,016|10,977|177,729|122
9|Italian|Italiano|it|1,197,904|4,029,583|77,947,301|102|1,207,350|8,178|131,008|108
10|Spanish|Español|es|1,178,321|5,053,818|87,609,605|79|3,728,196|17,767|1|188
11|Vietnamese|Tiếng Việt|vi|1,132,963|3,044,646|21,127,471|26|439,397|1,212|19,642|20
12|Polish|Polski|pl|1,111,166|2,301,331|42,619,263|120|687,424|4,132|0|21
67|Latvian|Latviešu|lv|60,777|249,568|2,411,441|14|51,787|327|16,331|93
110|Mongolian|Монгол|mn|14,345|42,590|452,960|7|34,216|107|1,474|41
199|Navajo|Diné bizaad|nv|2,451|12,641|152,935|2|7,780|9|328|209
222|Hausa|هَوُسَ|ha|1,342|3,232|30,434|0|4,850|21|2|19
234|Igbo|Igbo|ig|1,028|5,472|58,770|1|5,578|15|8|201
270|Fula|Fulfulde|ff|180|1,625|21,088|0|3,887|12|1|--


```
№	Language	Language (local)	Wiki	Articles	Total	Edits	Admins	Users	Active Users	Images	Depth
1	English	English	en	4,867,179	36,240,808	770,553,089	1,347	25,080,569	128,694	853,909	883
4	German	Deutsch	de	1,813,667	5,173,255	147,307,093	250	2,160,926	19,395	144,125	98
5	French	Français	fr	1,622,055	7,457,284	117,119,502	167	2,214,483	16,192	46,935	203
7	Russian	Русский	ru	1,219,843	4,272,535	82,976,047	88	1,656,016	10,977	177,729	122
9	Italian	Italiano	it	1,197,904	4,029,583	77,947,301	102	1,207,350	8,178	131,008	108
10	Spanish	Español	es	1,178,321	5,053,818	87,609,605	79	3,728,196	17,767	1	188
11	Vietnamese	Tiếng Việt	vi	1,132,963	3,044,646	21,127,471	26	439,397	1,212	19,642	20
12	Polish	Polski	pl	1,111,166	2,301,331	42,619,263	120	687,424	4,132	0	21
67	Latvian	Latviešu	lv	60,777	249,568	2,411,441	14	51,787	327	16,331	93
110	Mongolian	Монгол	mn	14,345	42,590	452,960	7	34,216	107	1,474	41
199	Navajo	Diné bizaad	nv	2,451	12,641	152,935	2	7,780	9	328	209
222	Hausa	هَوُسَ	ha	1,342	3,232	30,434	0	4,850	21	2	19
234	Igbo	Igbo	ig	1,028	5,472	58,770	1	5,578	15	8	201
270	Fula	Fulfulde	ff	180	1,625	21,088	0	3,887	12	1	--
```
