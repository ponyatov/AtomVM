# `asdf`
## Runtime Version manager for [[Erlang]], [[Elixir]] and [[Node/js]]
### менеджер версий [[Erlang]]/[[Elixir]]

https://asdf-vm.com/

[ASDF] manages multiple versions of [[Erlang]], [[Elixir]] and [[Node/js]]. It is a language-independent equivalent to tools like Ruby's [[Ruby/RVM]] or [[Ruby/rbenv]].

If you're constantly jumping from one project to another, it's not doable to uninstall and install the correct Elixir & Erlang versions every time you need to switch. That's where `asdf` comes to the rescue. `asdf` is a Runtime Version manager and that means that you can literally install any version of Elixir and Erlang on your machine (among others, using [[asdf-plugins]]) and enable them with just a single command.

## install

https://www.coletiv.com/blog/how-to-correctly-install-erlang-and-elixir/

```shell
$ git clone https://github.com/asdf-vm/asdf.git ~/.asdf
```
```shell
$ echo . ~/.asdf/asdf.sh  >> ~/.setenv
$ . ~/.setenv
```
```shell
$ which asdf
/home/ponyatov/.asdf/bin/asdf

$ asdf --version
v0.10.2-9dc61a5
```

## .tool-versions

The `.tool-versions` file in the project root specifies the versions to use:

```
erlang 22.2
elixir 1.9.4
nodejs 10.15.3
```

[[ASDF]] looks at the `.tool-versions` file and automatically sets the path to point to the correct version. The build script for the project runs `asdf install` to install the matching Erlang, Elixir and Node.js versions.

See [Using ASDF with Elixir and Phoenix](https://www.cogini.com/blog/using-asdf-with-elixir-and-phoenix/) for details.
