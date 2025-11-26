# So what's [[Erlang]]?

[[Erlang]] is a deeply functional programming language (and low- or mid-level in same cases)

Functions always returning the same result for the same parameter is called [[referential transparency]].

That means we can then glue dozens of functions together in order to resolve more complex problems while being sure nothing will break.

Obviously, there are some cases where it's useful to break referential transparency. Erlang has this very pragmatic approach with functional programming: obey its purest principles (referential transparency, avoiding mutable data, etc), but break away from them when real world problems pop up, like `today()` non-pure functions.

- functional programming language, but there's also a large emphasis on 
- concurrency and 
- high reliability
- Erlang uses the [[actor model]]
	- each actor is a separate process in the virtual machine

would be a lonely person, sitting in a dark room with no window, waiting by your mailbox to get a message (or send some)

Once you get a message, you react to it in a specific way in a single action.
- Every communication is explicit, traceable and safe.
- every process (actor) fail does not affect on any others

The [[BEAM]] VM and the libraries also allow you to update the code of a running system without interrupting any program, distribute your code with ease on many computers and manage errors and faults in a simple but powerful manner.

