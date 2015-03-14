# MLKA
Multi-Lingual Keyboard Assessment
_This repo contains some code in the assesment and comparison of keyboards in multible languages. I find that very little in the literature exists about keyboard effiencdnetcy measurements across languages. More generally the problem of what characters go where are arranged discussed as the **Keyboard Arangment Problem** (KAP) or **General Keyboard Arangment Problem** (GKAP)._

Notes and formulas from:
* **Yin, Peng-Yeng & En-Ping Su. 2011. Cyber Swarm optimization for general keyboard arrangement problem. International Journal of Industrial Ergonomics 41.1: 43-52.**
* Peng-Yeng, Yin, Glover Fred, Laguna Manuel & Zhu Jia-Xian. 2011. A Complementary Cyber Swarm Algorithm. International Journal of Swarm Intelligence Research (IJSIR) 2.2: 22-41.

 - - - 

* Eggers, Jan, Dominique Feillet, Steffen Kehl, Marc Oliver Wagner & Bernard Yannou. 2003. Optimization of the keyboard arrangement problem using an Ant Colony algorithm. European Journal of Operational Research 148.3: 672-86.
* Eggers, Jan, Dominique Feillet, Steffen Kehl, Marc Oliver Wagner & Bernard Yannou. 2003. An Ant Colony Optimization Algorithm for the Optimization of the Keyboard Arrangement Problem. European Journal of Operational Research 148.3: 672-86.
* Wagner, Marc Oliver, Bernard Yannou, Steffen Kehl, Dominique Feillet & Jan Eggers. 2003. Ergonomic Modelling and Optimization of the Keyboard Arrangement with an Ant Colony Optimization Algorithm. Journal of Engineering Design 14.2: 187-208.

Formulas dynamically created by: http://www.sciweavers.org/free-online-latex-equation-editor

1.
2. *Min O_{2}(k) =   \sum_{(u,v)\in D(\pi)}  \tau_kp (u,v)*
3. 

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

###Section 2.1.1 _Key Accessibility_

* _k_  = Keyboard Arrangement
* _π_ = a text
* _p_ = prediction algorithem
* _l*_ = load distribution represented as an N-dimensional vector whose _i_-th component indicates the ideal taping load on the _i_-th key
* _l<sub>kp</sub>(π)_ = is load distribution 

Min O<sub>1</sub>(k) = || l<sub>kp</sub>(π) - l<sup>*</sup> ||

![equation](http://www.sciweavers.org/tex2img.php?eq=Min%20O_%7B1%7D%28k%29%20%3D%20%20%20%5Cparallel%20l_%7Bkp%7D%28%CF%80%29%20-%20l%5E%7B%2A%7D%20%5Cparallel%20&bc=White&fc=Black&im=jpg&fs=12&ff=arev&edit=0)

###Section 2.1.2 _posture comfort_
In the following table 'd' is the distance between two keys

* d = distance between two keys

Penalty for matrix for consecutive hitting fingers considering four ergonmic criteria from Eggers et al. 2003.

 |  **2nd finger**  |||||
----|------|------|------|------|------
*1st finger* |  Thumb  |  Forefinger |  Middle finger |  Ring finger | Little Finger 
*Thumb* | d +1 | 2 | 2 | 2 | 2 
*Forefinger* | 1 | d +1 | 7 | 10 | 8 
*Middle finger* | 1 | 6 | d +1 | 11 | 9 
*Ring finger* | 1 | 9 | 10 | d +1 | 12 
*Little finger* | 1 | 7 | 8 | 11 | d +1 

Assumptions: 

1. No penelty for two consecutive keys durring the typing if they are hit with different hands.
2. The table only applies to the same hand.
3. This table is sutable for MFK but not SFK

> Situations not covered:
>
> 1. Press and hold situations
> 2. Chorded keystrokes eg. Shift+K
> 3. Deadkey useage

* N x N =??
* τ<sub>kp</sub>(u,v) = N x N key-pair penalty coefficient matrix
* D(π) = the set contaiing any two consecutive keys that are hit to produce π [the text].

Min O<sub>2</sub>(k) = 

![equation](http://www.sciweavers.org/tex2img.php?eq=Min%20O_%7B2%7D%28k%29%20%3D%20%20%20%5Csum_%7B%28u%2Cv%29%5Cin%20D%28%5Cpi%29%7D%20%20%5Ctau_kp%20%28u%2Cv%29%20%20&bc=White&fc=Black&im=jpg&fs=12&ff=arev&edit=0)

##Assertions

1. ideal load distribution occurs when 43.5% of the key storkes of done on the home row.
2. A preditction algorithem is more better, the more distance it saves a typists; the greater the distance saved in typing the better the preditction algorithem is.
