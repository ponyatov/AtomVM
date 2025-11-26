# Shell Commands

The Erlang shell has a built-in line editor based on a subset of [[emacs]], a popular text editor that's been in use since the 70s. If you know Emacs, you should be fine. For the others, you'll do fine anyway.

- tab complition

## exit

- `q()` shorthand for 
	- `init:stop()`
- `halt()`

## 

when you started the shell, there was a comment about 'aborting with `^G`'. Let's do that, and then press `h` to get help!

```
Eshell V13.1.5  (abort with ^G)
1> 
User switch command
 -->
```

- 'h' help

```
 --> h
  c [nn]            - connect to job
  i [nn]            - interrupt job
  k [nn]            - kill job
  j                 - list all jobs
  s [shell]         - start local shell
  r [node [shell]]  - start remote shell
  q                 - quit erlang
  ? | h             - this message
```

> If you type in `i` then `c`, Erlang should stop the currently running code and bring you back to a responsive shell
