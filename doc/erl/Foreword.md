# Foreword
by [[Joe Armstrong]]

To be honest I didn’t have a clue what [[Neuroevolution]] was before I started reading his manuscript, but the more I read the more I became engaged in the content.

- How can we simulate a biological system in a computer?
- Can we make a system that learns from its mistakes?

Gene chose to program his system in [[Erlang]], which is where I come in. Erlang was designed over twenty five years ago to solve a completely different problem. What we were trying to do at the time and we are still trying, is to make **a language for programming extremely large systems that never stop**.

Twenty years later [[Gene I. Sher]] comes along and discovers Erlang - to him, Erlang processes are neurons. Well of course Erlang processes are not neurons, but they can easily be programmed to behave like neurons.

Erlang was designed to scale. So today we can run a few million processes per node, and a few dozen nodes per chip. Computer architectures have changed from the single core Von-Neumann machine, to the multicore processor, and the architectures will change again. Nobody actually knows how they are going to change, but my bet is that the change will be towards network-on-chip architectures.

We’re already talking about putting a few hundred to a thousand cores on a single chip, but for this to happen we have to move to network on chip architectures. We can imagine large regular matrices of CPUs connected into a regular switching infrastructure. So we’ll soon end up with thousands of cores, each capable of running millions of Erlang processes.

What will we do with such a monster computer and how are we going to program it? Well I suspect Gene has an answer to this question; he’ll want to build a brain.

[[Joe Armstrong]]
[[place/sw/Stockholm]]
