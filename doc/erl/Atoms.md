# Atoms

- begin with a lowercase character: atoms
- atoms are literals, constants with their own name for hidden value
- atom cat means `cat` and that's it. You can't play with it, you can't change it, you can't smash it to pieces; it's `cat`

```erlang
atom.
with_underline.
email@like_allowed.
'can have spaces in single quotes'.
atom = 'atom'.
```

Atoms let you forget about the underlying values: my eye colors can simply be `blue`, `brown`, `green` and `other`.

These color atoms can be used anywhere in any piece of code: the underlying values will never clash.

> warning: Atoms are really nice and a great way to send messages or represent constants. However there are pitfalls to using atoms for too many things: an atom is referred to in an "atom table" which consumes memory (4 bytes/atom in a 32-bit system, 8 bytes/atom in a 64-bit system). **The atom table is not garbage collected**, and so atoms will accumulate until the system tips over, either from memory usage or because 1048577 atoms were declared.

This means atoms should not be generated dynamically for whatever reason;

