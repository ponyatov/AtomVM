# `BEAM`
## [[Erlang]] virtual machine
[[DVM]]
- https://github.com/AlexanderKaraberov/Erlang-BEAM-Links
- https://www.erlang.org/blog/a-brief-beam-primer/

## [[ERTS]]

[[BEAM]] is often confused with [[ERTS]] and it’s important to distinguish between the two; BEAM is just the virtual machine and it has no notion of processes, ports, [[erl/ETS|ETS]] tables, and so on. It merely executes instructions and while ERTS has influenced their design, it doesn’t affect what they do when the code is running, so you don’t need to understand ERTS to understand BEAM.
