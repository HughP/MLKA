# MLKA
Multi-Lingual Keyboard Assessment
_This repo contains some code in the assesment and comparison of keyboards in multible languages. I find that very little in the literature exists about keyboard effiencdnetcy measurements across languages. More generally the problem of what characters go where are arranged discussed as the **Keyboard Arangment Problem** (KAP) or **General Keyboard Arangment Problem** (GKAP)._

Notes from:
* **Yin, Peng-Yeng & En-Ping Su. 2011. Cyber Swarm optimization for general keyboard arrangement problem. International Journal of Industrial Ergonomics 41.1: 43-52.**
* Peng-Yeng, Yin, Glover Fred, Laguna Manuel & Zhu Jia-Xian. 2011. A Complementary Cyber Swarm Algorithm. International Journal of Swarm Intelligence Research (IJSIR) 2.2: 22-41.

 - - - 

* Eggers, Jan, Dominique Feillet, Steffen Kehl, Marc Oliver Wagner & Bernard Yannou. 2003. Optimization of the keyboard arrangement problem using an Ant Colony algorithm. European Journal of Operational Research 148.3: 672-86.
* Eggers, Jan, Dominique Feillet, Steffen Kehl, Marc Oliver Wagner & Bernard Yannou. 2003. An Ant Colony Optimization Algorithm for the Optimization of the Keyboard Arrangement Problem. European Journal of Operational Research 148.3: 672-86.
* Wagner, Marc Oliver, Bernard Yannou, Steffen Kehl, Dominique Feillet & Jan Eggers. 2003. Ergonomic Modelling and Optimization of the Keyboard Arrangement with an Ant Colony Optimization Algorithm. Journal of Engineering Design 14.2: 187-208.
	

##Typology of Keyboard layouts

Single |  Multi 
----|------
Keyboards with single finger keys (SFK) |  Keyboards with Multi-finger keys (MFK)  
Keyboards with single-character key (SCK) |  Keyboards with Multi-character keys (MCK)

While the above table is aranged by Multible and Single dynamics, the simularity is more often the following:

Mobile |  Computer 
----|------
Keyboards with Multi-character keys (MCK) | Keyboards with single-character key (SCK)
Keyboards with single finger keys (SFK) | Keyboards with Multi-finger keys (MFK)

Looking at the problem like this previous authors have described the problem space as button arangments which prevent there from being as many buttons as needed characters. _ As is the case with mobile phones (MCK)_ and then some of those users choose to use a single finger to do text input (SFK).

The second class of keyboard layouts is assumed to be that every character recives a unique key (SCK). And then that users use an ISO, JIS, or ANSI keyboard layout to do text input in a (MFK) enviroment.

>However, this typology is a bit problematic for two use cases:
>
>1. People who use the hunt and peck method on (SCK) layouts. This is common by some learners.
>2. Where the the non-English keyboard requires the use of deadkeys or modifier keys.

The Non-english stated keyboard layout (like those with deadkeys) sometimes assumes a MCK = M < N arrangment typology. But the operation of the keyboard is much closer to (MFK).

* M = Characters
* N = Keys

* SCK == M = N
* MCK == M > N
* MCK == M < N

##Ergonomics

Six ergonomic criteria:

1. tapping load distribution
2. number of keystrokes
3. hand alternation
4. finger alternation
5. finger posture
6. hit direction

##Variables used

* _k_  = Keyboard Arrangement
* _π_ = a text
* _p_ = prediction algorithem
* _l*_ = load distribution represented as an N-dimensional vector
* _l<sub>kp</sub>(π)_ = is load distribution 


##Assertions

1. ideal load distribution occurs when 43.5% of the key storkes of done on the home row.
2. A preditction algorithem is more better, the more distance it saves a typists; the greater the distance saved in typing the better the preditction algorithem is.
