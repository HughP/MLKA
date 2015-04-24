# MLKA
##Multi-Lingual Keyboard Assessment
_This repo contains some code and some theory for the assessment and comparison of keyboards in multiple languages. The multi lingual nature of the perspective in this repo sets it apart from many other projects._

####Project goals
The goal of this project is to bring 'natural', intuitive, and easy to use typing experiences in the form of keyboard layout designs to minority language users. These language users often do not type in their own languages. This is in part because of the perception that their langauge is complext or not easy to type, which is often not an invalid observation. However, with these languages which have different and sometimes more characters than English, what does a good layout look like?
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

---
#Repository layout
_This repository contains the following folders with the resons they exists._
1. [`/Publications`](/Publications)
2. [`/Academic-Papers`](/Academic-Papers)
3. [`/Methodology`](/Methodology)
4. [`/Theory/Keyboard-Layout-Theory`](/Theory/Keyboard-Layout-Theory/README.md)


##Publications
_The_ [`/Publications`](/Publications) _folder contains a list of publications created in the research process. Each subfold contains the data sets used to create those publications in addition to the text based materials for the publication (.pdf/.docx/Keynote slides, etc.) A list of publications can be found in the [ReadMe.md](/Publications/ReadMe.md) of the_ `/Publications` _folder._

##Academic Appropriateness
The Academic fit for keyboard layout design and assessment (especially across languages) is difficult to pin to a single academic discipline. In general the keyboard layout challenge has been approached from the perspective of _anthropology of objects, applied mathematics, computer science, design, economics, ergonomics (physiology), human-computer inertaction, language development, language documentation, linguistics, literacy, user experience design_. In this project I take two academic perspectives: 
 1. language use
 2. human-computer interaction

Notions of academic fit or appropiateness are further explored in materials contained in the [`/Academic Papers`](/Academic-Papers) folder

#Methodologies
_Methodologies are discussed in the_ [`/Methodology`](/Methodology) _folder._
These include: Hardware and software layout specs, Physical Keyboard Measurements, Applications and programs used, images of keyboard layouts, and research keyboards (think of this as the data).

##Keyboard layout theory
_The [`/Theory/Keyboard-Layout-Theory`](/Theory/Keyboard-Layout-Theory/README.md) folder contains discusses the history of the evolution of the keyboard and the evolution of how keyboards are measured. Perhaps the best known discussion is the controversy over QWERTY and Dvorak as it relates to the text input of English. However there are more than these two layouts to be discussed and more than just English text input to consider._
_There are two major social locations where keyboard layouts are discussed:_
  1. The computer programing world (forums, websites, etc.)
  2. The professional academic literature (journals, thesis, etc.)

_A comparitive review of the literature and designers discussing the problems encountered by the computer programing industry reveal very little about multi-lingual or non-English/Roman Script discussions. A review of the professional literature including technical journals, and journals focused on ergonomics find that very little in the literature exists about keyboard efficiency measurements across languages. More generally in the academic literature the problem of what characters go where on a keyboard layout, that is how they are arranged, is discussed as the **Keyboard Arrangement Problem** (KAP) or **General Keyboard Arrangement Problem** (GKAP)._

