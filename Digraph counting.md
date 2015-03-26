#Character counting and Digraph counting

When looking up my situation on the web, it seems that [others have tried to get to the same solution](http://s13.zetaboards.com/Crypto/topic/6830966/1/). They have called it: _biliteral frequency count, which is a count not of single elements, each composed of two letters, but of pairs of elements, each composed of a single letter._

My inital querry was:

_Does anyone have a script or tool for counting trigraphs (trigrams) and bigrams (digraphs)._
_Here is what I am doing: I have a unicode text: xyz.txt I want to find out how many pairs of which characters are in the text._

'aa' happens 15 times

'at' happens 35 times 

'fet' happens 12 times, etc.

_Basically load text, count, return counts._

_**I am working on OS X**, command line tools (perl/python) **with explanation** are also of interest._

##Second Clarification
_Given some other replies I requalified my statements with the following._

I don't already know what the matches are. It seems with your solution you are suggesting that I already know what the possibilities are, and can use that regex to search for those possibilities. In my case this is not the situation.

For instance I may have text string 'aaab'. However the actual text being used is arbitrary and in a sense unknown (as I am not making assumptions about the orthography or cooccurrences - I really am looking at digrams not digraphs in the orthography sense). Of course my text is much longer, and I actually have about 6 different texts I am working with. 

Given the 'aaab' string mentioned above that would mean that I have: 

####Digrams
'aa' three times
'ab' one time

####Trigrams
'aaa' one time
'aab' one time

Given the text 'aaab bbbc ab' I would expect that there would be the following treatment of the space character:

####Digrams
'aa' three times
'ab' two times
'bb' three times
'bc' one time
' b' one time
'b ' one time
' a' one time
'c ' one time

####Trigrams
'aaa' three times
'aab' one time
' bb' one time
'b b' one time
'bbb' one time
'bbc' one time
' ab' one time

##Yet one more clarification
I should clarify four things:

1. PUA is not an issue in my case.
2. The attribute is for the character in the digram/trigram is unimportant (it can be alphabetic or numeric or punctuation)
3. For this case Upper case and Lower case need to be differentiated the use of 'lower()' is not an option.
4. Alphabetical ordering of results is not necessary.

_Non-viable solutions_: PrimerPro, Synphony, FLEx, Phonology Assistant 

Reason:

I am looking at graphemic relations (neighborhood) not phonological relationships or phonemes being represented by a pair of orthographic characters.
