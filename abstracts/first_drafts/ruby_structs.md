# Title: Deconstructing class inheritance from structs, a very pretty anti-pattern.

# Abstract: Ruby is a beautiful, high-level language. It allows us to write thoughtful and human readable code. However, occasionally our desire for less verbose code can lead us into the lions den(cue kitten gifs). We'll examine one anti-pattern that has become popular because of this desire (and possibly because of the delayed job gem in rails), class inheritance from Structs.

This talk will give mid and jr level ruby engineers a deep dive into how both classes and structs work by looking at assumptions about classes that break with this type of inheritance. This includes error handling, attributes, and comparison. It will also reinforce examples of how structs should be used. 

# Resources: 
https://thepugautomatic.com/2013/08/struct-inheritance-is-overused/
http://words.steveklabnik.com/beware-subclassing-ruby-core-classes
https://twitter.com/joshsusser/status/365286610578849794
https://ruby-doc.org/core-2.1.1/Struct.html
https://www.reddit.com/r/ruby/comments/14u7zs/dont_subclass_struct_classes_please/
