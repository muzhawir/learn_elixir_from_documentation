# Learn Elixir from the Official Documentation

This repository is where I’m learning Elixir by following the
[official documentation](https://hexdocs.pm/elixir/introduction.html), the "Getting Started"
section. Instead of using IEx or [livebook.dev](https://livebook.dev), I chose to jump straight
into a Mix project. This approach allows me to start coding immediately and experience the actual
workflow of an Elixir project.

## Installation

Install Erlang and Elixir. This project uses `Erlang v27.1.1` and `Elixir v1.17.3`. The easiest way
to manage multiple versions of Erlang and Elixir is with the
[vfox version manager](https://github.com/version-fox/vfox).

Then, clone this project to your local machine:

```bash
# Using HTTPS
git clone https://github.com/muzhawir/learn_elixir_from_documentation.git

# Using GitHub CLI
gh repo clone muzhawir/learn_elixir_from_documentation
```

Navigate to the project directory and install the required dependencies:

```bash
cd learn_elixir_from_documentation
mix deps.get
```

## Packages

This repository uses these two packages:

- [credo](https://github.com/rrrene/credo) as a static analysis tool to help me write better code
in Elixir and warn me about common mistakes and inconsistencies during coding.
- [styler](https://github.com/adobe/elixir-styler) is a formatter plugin for Elixir. Actually,
 if you install this package, you don't need Credo because it's like a combination of `mix format`
 and `mix credo`. I installed both Credo and Styler just to see how these two packages work together.

## Todo List

- [x] [Basic Types](./lib/basic_types.ex)
- [x] [Lists and Tuples](./lib/list_and_tuples.ex)
- [x] [Pattern Matching](./lib/pattern_matching.ex)
- [x] [`case`, `cond`, and `if`](./lib/case_cond_if.ex)
- [x] [Anonymous Functions](./lib/anonymous_function.ex)
- [ ] Binaries, Strings, and Charlists
- [ ] Keyword Lists and Maps
- [ ] Modules and Functions
- [ ] Recursion
- [ ] Enumerables and Streams
- [ ] Processes
- [ ] IO and the File System
- [ ] `alias`, `require`, `import`, and `use`
- [ ] Module Attributes
- [ ] Structs
- [ ] Protocols
- [ ] Comprehensions
- [ ] Sigils
- [ ] `try`, `catch`, and `rescue`
- [ ] Writing Documentation
- [ ] Optional Syntax Sheet
- [ ] Erlang Libraries
- [ ] Debugging
