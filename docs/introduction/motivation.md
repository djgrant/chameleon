# Motivation

Chameleon exists to help developers use "object oriented CSS" and responsive web design techniques in harmony.

OOCSS (a term used broadly here) is a system that enables developers to scale a web site without also needing to scale its stylesheet. By breaking styles down into simple, common and re-usable traits, OOCSS provides limitless creation possibilities with a relatively small library of classes.

When combined with RWD the system can break down. A class may need to provide a different appearance in response to certain sized screens. Do we make that class always respond in the same way or should we give the choice to the developer?

Efforts to combine OOCSS and RWD techniques tend to fall into one of two categories: 
1. **Opinionated**: Assumptions are made about how a class's style should respond to different sized screens.
2. **Granular**: Class rules are duplicated (usually in a loop) for a set of screen sizes - `.hidden`, `.hidden-mobile`, `.hidden-tablet`, `.hidden-desktop` etc.

Here we have a dilemma: the first approach upholds both the flexibility and predictability of the system, but when it comes to brevity, the compiled stylesheet has ballooned.

Chameleon tackles this problem in 2 ways:
1. **Fine control**: Class rules are duplicated (as in the solution above) but only for a set of screen sizes as specified by the developer.
2. **Multi-element modifiers**: Top level modifiers create common layout traits by targeting an entire set of child elements.

<!-- Chameleon grid animation -->
