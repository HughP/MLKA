# MLKA
##Multi-Lingual Keyboard Assessment
_This repo contains some code and some theory for the assessment and comparison of keyboards in multiple languages. The multi lingual nature of the perspective in this repo sets it apart from many other projects._

####Project goals
The goal of this project is to bring 'natural', intuitive, and easy to use typing experiences in the form of keyboard layout desings to minority language users. These language users often do not type in their own languages. This is in part because of the perception that their langauge is complext or not easy to type, which is often not an invalid observation. However, with these languages which have different and sometimes more characters than English, what does a good layout look like?
The objectives of this project are threefold:

1. To establish a consistent method to evaluate the appropriateness of a keyboard layout for a specific language situation given a specific text sample. This needs to include `deadkeys` and `alt` states.
 * This needs to account for monolingual situations
 * This needs to account for multi-lingual situations where each language has its own keyboard
 * This needs to account for multi-lingual situations where only a single keyboard is used
2. Provide a best fit solution recomdnetation when provided the following:
 * A corpus of text encoded in UTF-16 or UTF-8 in any language
 * A user slected choice between a physical keyboard layout of ANSI, ISO, or JIS
The application providing the best fit solution needs to be able to suggest a better layout, inclusive of `alt` states and `deadkey` options.
3. Assess and analyse real user feedback. That is, measure the impacts of keyboards on users. Speed of typing, speed of keyboard acquisition, error rate, and results such as language choice when typing.

####About
This gihub repository contains scripts, discussion and overview of keyboards and keyboard layout solutions, formulas and data used in papers, presentations (papers presented), authored or co-authored by Hugh Paterson III on the topic of User Experience in text input form minority languages. This is part of an investigation which is a component of Hugh's Masters in Linguistics.
The purpose of this work is to present research and raises questions about the keyboard layout design presented to minority language users of text input solutions. It is my hope to make the text input process easier for languages which are discriminated against by technological norms.

####License and contributions
In one sense this is "not traditional open source" in that I (Hugh) am not licensing the repo under the GPL or CC or other such license. However, I am attempting to work more openly and github is the best venue I have found for working openly. So, collaboration is possible, forking the repo is also technically possible, and comments and corrections are always welcome. However, until after the masters thesis is presented, pull requests will be reviewed with caution (but not necessarily outright rejected). This is simply because in the academic humanities it is important (at least for my institution) to have work independent of others, as such independence is the basis of "originality". However, my contention with this institutional premise is that with the academic nature of publication citations, I don't see the plethora of individual work, independent of collaboration and thoughts which have not been influenced by others. That is, [what is new under the sun anyway](https://youtu.be/c7g_oViD00I?t=8s)?
Also in contrast to the norms of open source licenses and collaboration practice this repo may contain cited works which are not Hugh's "invention". These will always, where possible indicate who the original author/contributor is. This is more inline with the academic tradition of publishing (and fair use) rather than the open source tradition of nameless collaboration. Which means, in short I may not have the legal right to license everything in this repo under a single license.

##Papers and presentations
_The following papers and presentations can be found in this repo under the `/Publications` folder. Each subfold contains the data sets used to create those publications in addition to the text based materials for the publication (.pdf/.docx/Keynote slides, etc.)_
* Paterson, Hugh J., III. 2015. _Keyboard Layout Design for Minority Languages - (Socio)linguistic (app/im)plications_. MA Thesis in progress at the Uninversity of North Dakota.
 * [[In Repo Content](/Publications/2015 - Thesis)]
* Paterson, Hugh J., III. 2015. _African Languages: Assessing the text input difficulty_. Paper presented at the 46th  Annual Conference of African Linguistics. Held at the University of Oregon  26-28. March 2015
 * [[In Repo Content](/Publications/2015%20-%20Paper%20presented%20at%20ACAL46)]
* Paterson, Hugh J., III. 2015. _Assessing the difficulty of the text input task for minority languages_. Paper presented at the 4th International Conference on Language Documentation & Conservation, Ala Moana Hotel in Honolulu, Hawai‘i. http://scholarspace.manoa.hawaii.edu/handle/10125/25318
 * [[In Repo Content](/Publications/2015%20-%20ICLDC%20-%20Assessing%20the%20difficulty%20Presentation)] [[Archived Audio and Slides at UH Moana](http://scholarspace.manoa.hawaii.edu/handle/10125/25318)]
* Paterson, Hugh J., III. 2014. _Keyboard layouts: Lessons from the Meꞌphaa and Sochiapam Chinantec designs_. In Mari C. Jones (ed.), Endangered Languages and New Technologies, 49-66. Cambridge, UK: Cambridge University Press.
 * [[In Repo Content](/Publications/2014%20-%20Publication%20%20-%20Submission%20(Not%20final%20publication%20version)/Second%20(shorter)%20Paper/Final%20submission) (Pre-print draft)] [[Final publication](https://books.google.com/books?id=HpBEBQAAQBAJ&pg=PA49&dq=hugh+Paterson+III&hl=en&sa=X&ei=hDgOVbWpD8r9yQS9g4KYAg&ved=0CCQQ6AEwAQ#v=onepage&q=hugh%20Paterson%20III&f=false) view on Google Books] [[Buy the book](http://www.cambridge.org/US/academic/subjects/languages-linguistics/sociolinguistics/endangered-languages-and-new-technologies) at CUP]
* Paterson, Hugh J., III. 2012. _Keyboard layout as part of language documentation: the case of the Meꞌphaa and Chinantec keyboards_. Paper presented at CRASSH Conference Language Endangerment: Methodologies and New Challenges, Cambridge, UK.
 * [[In Repo Content](/Publications/2012%20-%20Paper%20presented%20at%20CRASSH)] [[Blog post](http://hugh.thejourneyler.org/2012/keyboard-design-for-minority-languages/)] [[Youtube video of presentation](http://youtu.be/_Z5n77NPZC0)]

#Organization
_This repo is divided up into several sections. It is hard to say content is solely belonging to one section or anther (so cross references may exist)._

##Keyboard layout theory and the historical progression of the keyboard layout
_This section discusses the history of the evolution of the keyboard and the evolution of how keyboards are measured. Perhaps the best known discussion is the controversy over QWERTY and Dvorak as it relates to the text input of English. However there are more than these two layouts to be discussed and more than just English text input to consider._
_There are two major social locations where keyboard layouts are discussed:_
  1. The computer programing world (forums, websites, etc.)
  2. The professional academic literature (journals, thesis, etc.)

_A review of the websites discussing the problems encountered by the compute programing industry reveal very little about multi-lingual or non-English/Roman Script discussions. A review of the professional literature including technical journals, and journals focused on ergonomics find that very little in the literature exists about keyboard efficiency measurements across languages. More generally in the academic literature the problem of what characters go where on a keyboard layout, that is how they are arranged, is discussed as the **Keyboard Arrangement Problem** (KAP) or **General Keyboard Arrangement Problem** (GKAP)._
[Keyboard layout theory](/Theory/Keyboard-Layout-Theory/README.md)

##Academic fit
The Academic fit for keyboard layout design and assessment (especiall across languages) is difficult to pin to a single academic discipline. In general the keyboard layout challenge has been approached from the perspective of _anthropology of objects, applied mathematics, computer science, design, economics, ergonomics (physiology), human-computer inertaction, language development, language documentation, linguistics, literacy, user experience design_. In this project I take two academic perspectives: 
 1. language use
 2. human-computer interaction

While it appears simple to narrow down the choice of academic disciplines to two, deciding which two is not easy. Some description of how the keyboarding task fits within these two academic disciplines is shown in the following diagram.


---- insert diagram ---- 
 To include: figur 3.1 from http://www.sis.uta.fi/~pi52316/g/node6.html
Compatible input devices
Mouse
Touchpads, touch-screens, pressure sensitive pens and digitizing tablets
Trackball
Joysticks
Keyboard

[Academic Papers](/Academic-Papers/AcademicPapersToCheckOut.md)

##Methodologies
_Methodologies are discussed in the [`Methodology`](/Methodology/) folder._
