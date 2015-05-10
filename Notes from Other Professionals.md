#Notes from other profesionals
##From Martin Hoskens via email
1) I would encourage you to read up on Canonical Equivalence and meditate hard over the fact that U+00ED has a canonical expansion (that is all processes should treat it *identically*) to U+0069 U+0301.
2) Microsoft has a policy of not normalising people's data but only comparing text using normalisation. So care has to be taken over whether a keyboard produces NFC or NFD.

BTW AFAIK a Microsoft Keyboard can generate up to 4 codes from a single key event.

---
##<--- note from Paul--->
That's really interesting! I would have appreciated your paper at the time - I was working from intuition to combine linguistic info with technical best practice for keyboards and Unicode.
Some major factors I found:
- It is impossible to underestimate the ability level of older generation typists! They need training (hard to organise for underresourced languages) and/or high ease of use to be productive. Younger people don't find typing so confusing.
- People are creatures of habit. Existing well known ways of typing local letters/diacritics need to be used as a base for a development path, even if they don't fit with standard practice for keyboards internationally. That means slow movement from interim solutions towards (ideally) standards-compliant keyboards integrated with OS'es like Windows.
- Some edge case details of the orthographies are still formally undecided, leading to possibly superfluous characters, and that's likely to be a problem for other minority languages as well.
- Other languages are also likely to have the same problem of which dialect features or obsolete orthographic features are supported and which are out of scope.
- Virtual phone layouts have become relatively very important.
- The need to be able to type the majority language is important, for example French mixed in with Berber. That's likely to be a problem for other languages too.
- The older generation often insist on no change to the key positions for accessing the majority language. Sometimes this is because they in fact type more often in the majority language than their own! That constrains the minority language support to be squeezed in around the majority language layout, at least initially.
- A related issue is that the layout needs to be related carefully to the printed key tops of standard local keyboards, since they are everywhere in cybercafes, homes, schools etc. and since the minority language is underresourced, they are unlikely to be replaced with new dedicated physical keyboards.
- The lack of widespread writing of the minority language means that there is little initial pressure for fast typing (design with few keypresses). That comes only later and from younger, demanding users.
- The question of typing using deadkeys or by adding diacritics Unicode-style arises for languages with lots of diacritics, especially where there are no precomposed letters.

Paul.

Re: conversation about: A universal Amazigh keyboard for Latin script and Tifinagh
* Anderson, Paul. 2012. A universal Amazigh keyboard for Latin script and Tifinagh. In Youssef Ait Ouguengay & Siham Boulaknadel (eds.), Les ressources langagières : construction et exploitation : le 4ème atelier international sur les technologies d'information et de communication pour l'amazighe. Rabat, 24-25 février 2011 (Colloques et séminaires (Institut royal de la culture amazighe) 27), 165-79. Rabat, Morocco: Institut Royal de la Culture Amazighe, Centre des Etudes Informatiques, des Systèmes d'Information et de Communication.

---
##A Note about Functional load
In Nawdm, automatic downstep occurs in declarative sentences, but is suspended in interrogative counterparts until the fall on the final syllable. There's a brief explanation of this with examples in :

Roberts, David (2013). A tone orthography typology. In ed. Susanne R. Borgwaldt & Terry Joyce, Typology of Writing Systems, 85-111. Amsterdam: John Benjamins. pp 92-93.

I have other unpublished examples of this if you need them, and I'm sure Jacques Nicole can give you more details.

Also: « Declination is said to be a universal effect, at least with respect to declarative sentences. The effect is frequently said to be suspended in question and other sorts of non-declaratives (see, e.g. Lindau 1986 for Hausa), or in situations where tonal contrasts might be endangered (Hombert 1974, Connell 1999a). » (Connell 2001)
Connell, Bruce (2001). Downdrift, Downstep, and Declination. Paper presented at the Typology of African Prosodic Systems Workshop, 18-20 May, 2001, Bielefeld University, Germany.
-Dave

You could look at the following article: 
Jannedy, Stefanie and Ines Fiedler. 2013. Prosody of focus marking in Ewe. JALL. Volume 34, Issue 1, 1–46.
If I remember right, they cite some articles among their references that also deal with intonation in African languages.
Also, Annie Rialland has been doing research on intonation in Embosi and Wolof (and probably other languages). If you google Rialland and intonation, you will come up with some references, although a lot of them are conference presentation.
