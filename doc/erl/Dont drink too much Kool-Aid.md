# Don't drink too much Kool-Aid

There may be many little yellowish-orange sections named like this one around the book (you'll recognize them when you see them).

The first case of this is related to Erlang's massive scaling abilities due to its **lightweight processes**. It is true that Erlang processes are very light: **you can have hundreds of thousands of them** existing at the same time,

but this doesn't mean you have to use it that way just because you can.

There is still a small cost in sending a message from actor to actor, and if you divide tasks too much, _you will make things slower_!

Erlang is also said to be able to scale in a directly proportional manner to how many cores your computer has, but this is usually not true: it is possible, but most problems do not behave in a way you want

ou should not necessarily wall yourself in server software with Erlang: 
- [[IANO]], a robot created by the UNICT team, which uses Erlang for its artificial intelligence
- [[cad/Wings 3D]], an open source 3D modeler (but not a renderer) written in Erlang
