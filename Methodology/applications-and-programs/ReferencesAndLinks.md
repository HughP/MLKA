#References and Links
_These are refences and links about text input methods and digital writing. Included are links to technical discussions, technical specification, computer utilities for monitoring and evaluating text input, and descriptions about text input methods._

##Resources for OSes
_These links are to discussions and technical descriptions about text handling and text input methods as they are handled in different operating systems._
###Android
Key Character Map Files: https://source.android.com/devices/input/key-character-map-files.html
http://www.kandroid.org/online-pdk/guide/keymaps_keyboard_input.html

###iOS
Keyboard Management: https://developer.apple.com/library/ios/documentation/StringsTextFonts/Conceptual/TextAndWebiPhoneOS/KeyboardManagement/KeyboardManagement.html

###Linux
Event Codes for Text Input https://www.kernel.org/doc/Documentation/input/event-codes.txt
Keycodes, Keypress events, and Keyboard encoding: http://tronche.com/gui/x/xlib/input/keyboard-encoding.html
Keyboard and mouse events: http://tronche.com/gui/x/xlib/events/keyboard-pointer/keyboard-pointer.html
Keycodes in kernel: https://wiki.archlinux.org/index.php/Extra_keyboard_keys#Keycodes

###Twitter
https://dev.twitter.com/overview/api/counting-characters

###OS X
* Key events: https://developer.apple.com/library/mac/documentation/Cocoa/Conceptual/EventOverview/HandlingKeyEvents/HandlingKeyEvents.html
  * http://web.archive.org/web/20100501161453/http://www.classicteck.com/rbarticles/mackeyboard.php
  * $ `vi /System/Library/Frameworks/Carbon.framework/Versions/A/Frameworks/HIToolbox.framework/Versions/A/Headers/Events.h` per http://stackoverflow.com/questions/3202629/where-can-i-find-a-list-of-mac-virtual-key-codes
* .keylayout files: https://developer.apple.com/library/mac/technotes/tn2056/_index.html
* Text Input Source Services Reference: https://developer.apple.com/library/mac/documentation/TextFonts/Reference/TextInputSourcesReference/


###Windows
https://msdn.microsoft.com/en-us/library/windows/desktop/ff468857(v=vs.85).aspx

##Software Resources
_These resources are a wide range of resources about a wide range of topics. Mostly they are about keyboards and text input evaluations._
###Mixed
* https://github.com/ojbucao/Workman
* https://github.com/deekayen/norman The Norman keyboard layout by David Norman is licensed under CC0 1.0 Universal, no copyright, public domain. http://normanlayout.info
* https://github.com/district10/neo_keyboard_layout
* https://github.com/kwhat/jnativehook Keyboard and Mouse listeners in Java
* Philippines Keyboard https://bitbucket.org/paninap/pnkl/
* http://www.faculty.virginia.edu/linganth/Program/Linguistics%20Software%20Tools%20Page.htm
 
###Android
* **[Typing-Test](https://github.com/kotlyarovsa/Typing-Test)**: This is a program with several simple customizable tests, which calculate parameters of your typing: words and chars per minute, mistakes, error rate and etc.
* **[Maxikeys](http://www.maxikeys.com/dead-keys.html)** is a Keyboard App for Android Phones whith a keyboard mapping layer. Commercial product: $3.50 for app and $1.30 for each keyboard.
* **[kasahorow-Keyboard-For-Android](https://github.com/eyedol/kasahorow-Keyboard-For-Android)**
* [AnySoftKeyboard](http://anysoftkeyboard.github.io/):  All kinds of keyboards:
 * supporting lots of languages via external packages. E.g., English (QWERTY, DVORAK, AZERTY and Colemak), Hebrew, Russian, Arabic, Lao, Bulgarian, Swiss, German, Swedish, Spanish, Catalan, Belorussian, Portuguese, Ukrainian and many more
* [O Keyboard](https://plus.google.com/u/1/108476491967142053511/about)
 * https://groups.google.com/forum/#!forum/multiling-keyboard
 * https://plus.google.com/u/1/108476491967142053511/about
* [Indic Keyboard](https://plus.google.com/u/1/communities/100056827514089367822) - 
 * https://play.google.com/store/apps/details?id=in.androidtweak.inputmethod.indic
* [TouchPal Keyboard](https://plus.google.com/u/1/communities/105746648636072214666)
 * https://play.google.com/store/apps/details?id=com.cootek.smartinputv5 

###iOS
* **[JACKeyboard](http://jaredcrawford.org/JACKeyboard/Documentation/Classes/JACKeyboard.html)**
* **[KeyboardLayouts for JACKeyboard](https://github.com/JaredCrawford/KeyboardLayouts)** Keyboard configuration JSON files for use with JACKeyboard.

###UNIX (Meaning Linux or command line Unix, inclusive of OS X)
####Progressive Evolution of typing layouts
_This series of software mathematically looks for the best fit keyboard layout based on a text set._
* **[Typing](https://github.com/michaeldickens/Typing)**: This is a program designed to efficiently optimize keyboard layouts, inspired by the work done by Peter Klausler. It uses a (relatively) friendly command-line interface to allow the user to customize a keyboard layout. This work is by Michael Dickens.
* **[Keyboard Battle](https://github.com/bak/keyboard_battle)** compares the performance of keyboard layouts according to reach effort and alternation effort. Current state: code made temporarily hideous for speed benefit. 
* **[KeyboardEvolve](http://sourceforge.net/projects/keyboardevolve/)**: A framework for evolving better keyboard layouts. This work is by Michael Capewell. **C++**

_The applications below may not be as refined as the ones above._
* **[Keylog analysis in Python](https://github.com/bhushanRamnani/KeystrokeDynamicsDataAnaysisRepo)** - Seems to be exactly what I am looking for
* **[Keyboard Layout](https://github.com/wenderen/keyboard-layout)**: Meta-optimized genetic algorithms applied to the problem of generating a keyboard layout that is as efficient as possible. This project is done as part of LISP.
* **[KeyStrokeApp](https://github.com/MikeShins/KeyStrokeApp)**: Written in Java

####Linux-ish
* **[keyboard](https://github.com/kopoli/keyboard)**: Tool for setting up a custom keyboard layout in X
* **[Keystroke](https://github.com/sammeroo/keystroke)**: Keystroke Pattern recognition using Neural Networks - Written in gtk+
* **[Keycounter](https://github.com/programble/keycounter)**: A keystroke counter for X11.
* **[ibus-xkb-layouts](https://github.com/suzhe/ibus-xkb-layouts)**: Wrap XKB keyboard layouts into ibus input method engines.
*  **[Colegrammer](https://github.com/repolho/xkb)**: Colegrammer - Colemak for the (shell) programmer Keyboard layout
*  **[Keyboard Layout Viewer for Neo 2.](https://github.com/YggdrasiI/NeoLayoutViewer)**: Allows viewing of the keyboard on the screen.
* **[IPA symbols with xkb](http://www.ajmakkas.com/pages/c_xkbipa.html)** IPA symbols with xkb layout on Slackware
* **[Create a new keyboard layout for OLPC](http://wiki.laptop.org/go/Creating_A_New_Keyboard_Layout)** One Laptop per child layout design instructions.
* **[XCAPE](https://github.com/alols/xcape)** Linux utility to configure modifier keys to act as other keys when pressed and released on their own.
* **[English Neo Keyboard Layout](https://github.com/district10/neo_keyboard_layout)**

###OS X

* **[LipikaIME](https://github.com/ratreya/Lipika_IME)** a user-configurable, phonetic, Input Method Engine for Mac OS X with built-in support for Bengali, Devanagari, Gujarati, Gurmukhi, Hindi, Kannada, Malayalam, Oriya, Tamil and Telugu using ITRANS, Baraha, Harvard Kyoto, Barahavat and Ksharanam transliteration schemes.
* **[Human Factors](https://github.com/Javier-varez/HumanFactors)** An utility application to compare different keyboard layouts, developed for my Human Factors class (IE 355) at NJIT
* This Python script is intended for converting Mac keyboard layouts to Windows .klc files, the input format for “Microsoft Keyboard Layout Creator” (MSKLC). https://github.com/adobe-type-tools/keyboard-layouts
* **[KeyCastr](https://github.com/keycastr/keycastr)**: an open-source keystroke visualizer - for seeing the keys you hit on screen.
* **[logKext](https://github.com/SlEePlEs5/logKext)**: An update to fsb's logKext tool. Runs on 10.9 Mavericks!
* **[dual-keyboards](https://github.com/pnc/dual-keyboards)** An OS X utility to allow the use of modifier keys across multiple external keyboards http://dotdotcomorg.net/Mac/
* **[my-multiple-keyboards](https://github.com/mejedi/my-multiple-keyboards)**: A tool for Mac OS X enabling modifier keys to work ‘across’ keyboards if you have more than one
* **[Karabiner](https://pqrs.org/osx/karabiner/)**: A powerful and stable keyboard customizer for OS X.
* **[Ukelele](http://scripts.sil.org/ukelele)**: Ukelele is a Unicode Keyboard Layout Editor for Mac OS X versions 10.2 and later. Version 2.0 and later are only for Mac OS X versions 10.4 and later. Beginning with version 10.2 (Jaguar), Mac OS X supports an XML-based format for keyboard layouts (.keylayout files). These may be installed by copying them to the Keyboard Layouts folder within /Library or ~/Library; then they are enabled via the Input Sources (Input in 10.5 and earlier) tab of the Language & Text (International in 10.5 and earlier) module within System Preferences.
* **[Keyboard Layout](https://github.com/atom/keyboard-layout)** Node module to read and observe the current keyboard layout on OS X
* **[LayoutTracker](https://github.com/andrimarjonsson/LayoutTracker)**
* **[NPKeyboardLayoutGuide](https://github.com/Nodepad/NPKeyboardLayoutGuide)**: NPKeyboardLayoutGuide - iOS maybe?
* https://github.com/lailsonbm/ABNT2-Layout
* https://docs.cycling74.com/max7/maxobject/itoa

* **[Ultra Character Map (for OS X)](http://www.x04studios.com/macapps.html)** - Access to Unicode Characters.
 
* **[Keyboard Layout Switcher](https://github.com/porqz/KeyboardLayoutSwitcher)**: Keyboard Layout Switcher (KLS) is plugin for Vim, which frees users from unnecessary actions.

####Keyboard Layouts
* **[KeyLayoutMaker](http://scripts.sil.org/keylayoutmaker)**: Perl script to create Mac OS X keyboard layouts.
* **[Unicode Keyboards for Mac OS](http://wordherd.com/keyboards/)** - a collection of OS Keyboard scripts
* **[Mongolian Keyboard layout](https://github.com/buyaka/MonKeyboard)**: Mongolian Keyboard layout for the Mac OSX
* **[COLEMAK Layout](https://github.com/sergio/KeyboardLayouts)** for OS X
* **[LatinAmerican Keyboard Layout](https://github.com/edmz/latam_keyboard)** MacOSX LatinAmerican Keyboard Layout
* **[Polish Dvorak](https://github.com/taw/osx-keyboard-layouts)**
* **[Georgian Keyboard](https://github.com/Gozala/georgian-keyboard-layouts)** Installable Georgian Keyboard Layouts for OSX
* **[US ISO](https://github.com/mitsuhiko/osx-keyboard-layouts)** US ISO
* https://github.com/burningTyger/keyboard_layouts based on the regular OS X German keyboard layout but with slight modifications to accommodate transliteration of Arabic/Persian/Turkish etc.
* **[Romanian & Swedish keyboard layouts for Mac OSX](https://github.com/andreineculau/OSX-PC-keyboard-layouts)**
* **[Mac Keyboard Layouts](https://github.com/SamirTalwar/Mac-Keyboard-Layouts)**
* **[Math Keyboard](https://github.com/drostron/osx-keyboard-layouts)** documentation and MathUnicode original files at: http://tex.stackexchange.com/a/110043
* **[Cyrillic keyboard](https://github.com/muromec/bandera-layout)**: For particular reason I don't like to look at that flag anymore. So I hacked my keyboard layout, changed it's name, flag and added missing Ukrainian-Cyrillic letters to it.
* **[Custom US Keyboard Layout](https://github.com/lnikkila/keyboard)**: OS X’s US keyboard layout modified to suit my tastes.
* **[Keyboard Layout for German Accents on US Keyboards](https://github.com/janv/usgerman)**: OS X Keyboard Layout for German Accents on US Keyboards
* **[Armenian Phonetic Keyboard Layout](https://github.com/vahe-evoyan/armenian-phonetic)**: Armenian phonetic keyboard layout for Mac OSX
* **[osx-keyboard-layout-german-no-deadkeys](https://github.com/sebroeder/osx-keyboard-layout-german-no-deadkeys)**: A German OS X keyboard layout that eliminates deadkeys
* **[Ukrainian-Russian](https://github.com/palmerc/Ukrainian-Russian)**
* **[MathUnicode](https://johnwickerson.wordpress.com/2010/01/07/mathunicode-keyboard-layout/)**
* **[Lebanese Keyboards](http://studylebanese.com/category/downloads/)**
* **[colemak-qwerty](http://code.instructorium.com/colemak-qwerty/)** Needs moved to github.
* **[Bepo - customized](https://github.com/mnapoli/bepo/)** French optimized keyboard
* **[Ethiopic Keyboards](http://keyboards.ethiopic.org/)** - Mostly in Keyman files.
* **[Malayalam Keyboards](http://www.prokerala.com/malayalam/)**

###Chrome
* **[Personal Keystroke Archival System For Pandas (Not A Keylogger)](https://github.com/aslaugsollilja/PersonalKeystrokeArchivalSystemForPandasNotAKeylogger)**: A Chromium extension that sends all keystrokes to an online service, where they are logged and can later be accessed by the user. 

###Windows
* **AutoHotKey** http://www.autohotkey.com/
* **[MacKeyboard](https://github.com/andmos/MacKeyboard)** This AutoHotkey configuration file makes usual keyboard shortcuts work with an Apple keyboard on Windows with norwegian layout. 
* **[Keystrokes Logger](https://github.com/sushantkhurana/Win32-KeyStrokes)**: A dll and a consumer to record and log keystrokes in xml format. Win32 
* **[AwesomeKeys](https://github.com/pacojain/AwesomeKeys)**: Optimized keyboard-based windowing and modal editing with AutoHotkey
* **[keyboard-tweaks](https://github.com/stevepugh99/keyboard-tweaks)**: This project contains AutoHotkey scripts and Microsoft Keyboard Layout Creator (KLC) files for making your typing experience more comfortable and efficient.
* **[Programmer-keyboard-layout](https://github.com/bga/Programmer-keyboard-layout)**: Keyboard layout, optimized for programming Idea is make type much easy.
* **[Ghost Keyboard](https://github.com/psosera/ghost-keyboard)** - Quick and dirty program that displays keystrokes via low-level hooks to a WinForms GUI. Useful for accessibility or screencasts where you want to show keystrokes in real-time.
* **[keystrokeanalyzer](https://github.com/AlphaGit/keystrokeanalyzer)** keystroke analyzer 

* **[keyboardLayoutOptimizer](https://github.com/keyboardDrummer/keyboardlayoutoptimizer)**: This application can search for optimal keyboard layouts. It combines two pieces of information to evaluate a given keyboard layout:
 * The first is a 'corpus', a body of text. This is the text that you want the keyboard layout to be optimal for.
 * The second input of the algorithm is your 'typing style', which is the time it takes you to press two particular keyboard positions in sequence.

* **[A collection of MSKLC keyboards for Dinka, Neur, Ewe, Chollo](https://github.com/andjc/msklc)** - These are South Sudan languages.

###Firefox OS
* https://developer.mozilla.org/en-US/Firefox_OS/Developing_Gaia/Customizing_the_keyboard

###Web Platform

* **[Keyboard Layout Editor](https://github.com/ijprest/keyboard-layout-editor)** Web application to enable the design & editing of keyboard layouts http://www.keyboard-layout-editor.com/
* **[Klavarog Δ](https://github.com/ibnteo/klavarog_delta)** : Keyboard trainer "Klavarog Δ" (klava.org)
 * http://klava.org/#eng_code_xslt
* **[Keyboard Heatmap](http://timepass.appb.in/keyboardheatmap.html)**
* **[TileMill Keyboard Heatmap](http://utilitymill.com/utility/Keyboard_HeatMap)**

####JS

* Convert Keycodes to keymaps: https://github.com/timoxley/keycode
* Test out key codes: http://www.w3.org/2002/09/tests/keys.html
* **[Android Keyboard Detect](https://github.com/mongoltolbo/Android_Keyboard_Detect)** An imperfect javascript hack to detect when the Android soft keyboard is shown on screen from an input 'focus' event.
* **[Keystrokes for jQuery](http://boedesign.com/blog/2009/12/30/keystrokes-for-jquery/)** Jquery plugin [on github](https://github.com/jboesch/Keystrokes)
* **[Keyboard Heatmap](https://github.com/pa7/Keyboard-Heatmap)** Realtime Keyboard Heatmap showing the character distribution of texts - made with heatmap.js http://www.patrick-wied.at/projects/heatmap-keyboard/
* **[ug_vk](https://github.com/finalfantasia/ug_vk)**: A virtual keyboard for the Uyghur language written in vanilla JavaScript. This is an optimized and modernized fork of the original work written by Mr. Muhemmed Abdullah.
* **[JavaScript Madness: Keyboard Events](http://unixpapa.com/js/key.html)**
* **[Shift Key Attribute](http://www.w3schools.com/jsref/event_shiftkey.asp)**
* **[Alt Key](http://www.w3schools.com/jsref/event_altkey.asp)**
* **[Meta Key Event](http://www.w3schools.com/jsref/event_metakey.asp)**
* **[DOM Events](http://www.w3schools.com/jsref/dom_obj_event.asp)**
* **[Javascript Char Codes (Key Codes)](http://www.cambiaresearch.com/articles/15/javascript-char-codes-key-codes)**
* **[d3](http://stackoverflow.com/questions/15261447/how-do-i-capture-keystroke-events-in-d3-force-layout)** - Adding keyboard events to D3.
 * Here is an example: https://gist.github.com/tmcw/4444952

##Buy a custom text input solution

###Physical keyboards
* a discussion about a custom input solution: http://boards.openpandora.org/topic/15403-pyra-keyboard-layout-requirement-analysis/page-2
* http://www.wasdkeyboards.com/index.php/wasd-v2-105-key-iso-custom-mechanical-keyboard.html

###Overlays and stikers
* http://www.datacal.com/international-overlays.htm

####Keyboard Stickers
* http://www.4keyboard.com/xcode-keyboard-sticker-p-853.html
* http://www.4keyboard.com/language-stickers-arabic-c-82_34.html
* http://www.4keyboard.com/arabic-large-lettering-keyboard-sticker-p-351.html

###10 Finger keyboards
* [Truly Ergonomic Mechanical Keyboard](https://www.trulyergonomic.com/store/products) [OpenFirmWare project](https://github.com/yurivkhan/teck/)
* [Kinesis Keyboard](http://mindprod.com/bgloss/kinesis.html)
* [Maltron Keyboards](http://mindprod.com/bgloss/maltron.html)
* http://www.daskeyboard.com/
* http://www.bestbuy.com/site/datacal-russian-and-english-bilingual-keyboard-black/7031056.p?id=1218824947707&skuId=7031056
* Datacal Bilingual - Keyboard - Japanese- http://www.amazon.com/DataCal-Japanese-English-Keyboard-Ergoguys/dp/B008AXH28C
* [TypeMatrix](http://www.typematrix.com/2030/features.php)
* OpenHardware keyboard: https://github.com/technomancy/atreus

###Buy keytops
* http://www.laptopkey.com/KeyboardKeys.php/Apple/Macbook%20Pro%20Retina%20Display%2015%20Inch/ME664LL~A

###Measurements Examples
_This is an example of what a product description for a keyboard looks like._
* http://www2.elecom.co.jp.e.gj.hp.transer.com/peripheral/full-keyboard/tk-fcm064whrs/

###Keypads
* Japanese Cellphone: http://en.wikipedia.org/wiki/File:Keypad_on_Japanese_phone_708SC.jpg see: http://en.wikipedia.org/wiki/Japanese_input_methods
* Left handed keypad: http://commons.wikimedia.org/wiki/File:Left_handed_keypad.png


##Services
* http://whatpulse.org/

##Just a dump of links

* Some tools and resources for character input by SIL: http://scripts.sil.org/inputtoollinks
* Comparing Keyman and Microsoft Windows Keyboard Layout Creator: http://scripts.sil.org/KeymanVsMSKLC
* Apple Developers Technical Note TN2056 Installable Keyboard Layouts: https://developer.apple.com/library/mac/technotes/tn2056/_index.html
* https://gigaom.com/2004/11/03/text_entry_epip/
* http://sangaline.com/blog/optimizing_for_swype/FITALY.html
* The hold of the keyboard: The Troublesome Task of Rejiggering the Keyboard: http://web.archive.org/web/20090630115240/http://www.technewsworld.com/story/67444.html - Also as PDF

##Games and other stuff
* Graph search, algorithmic optimization, and word games: How to program Ruzzle http://www.alexkorn.com/blog/author/admin/

###Games for typing:
* Type Fu is an app that will teach you how to type fast. The right way. On Mac, Linux, Windows and Chrome OS. http://type-fu.com/
* Master your Mac’s keyboard: Keyboard & Aliens: http://www.x04studios.com/macapps.html
* Typing Lessons online: https://typing.io/lessons
