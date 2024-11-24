# Learn Elixir from the Official Documentation

[![Elixir CI](https://github.com/muzhawir/learn_elixir_from_documentation/actions/workflows/elixir.yml/badge.svg)](https://github.com/muzhawir/learn_elixir_from_documentation/actions/workflows/elixir.yml)

This repository shows my journey learning Elixir by following the
[official documentation](https://hexdocs.pm/elixir/introduction.html), especially the
"Getting Started" section. Instead of using IEx or [livebook.dev](https://livebook.dev),
I decided to go right into a Mix project. This lets me get used to the real workflow of an Elixir
project and start coding right away.

For each chapter, I make a module to follow the examples in the documentation and then recreate
them using my own functions, keeping them close to the original examples. This practice helps me
get familiar with writing production-quality code. I’m also learning to add `@moduledoc`, `@doc`,
and `@spec` comments and practice TDD with `ExUnit`. My goal is to understand Elixir basics well
before moving on to learning Phoenix.

## Other Learning References

I also use the book [Elixir in Action](https://www.manning.com/books/elixir-in-action-third-edition)
. José Valim, the creator of Elixir, said it’s a top book for Elixir learners. I bought the 3rd
edition, which is based on Elixir version 1.15.

## Installation

Install Erlang and Elixir. This project uses `Erlang v27.1.1` and `Elixir v1.17.3`. To manage
multiple versions of Erlang and Elixir, try the
[vfox version manager](https://github.com/version-fox/vfox).

Clone this project to your local machine:

```bash
# Using HTTPS
git clone https://github.com/muzhawir/learn_elixir_from_documentation.git

# Using GitHub CLI
gh repo clone muzhawir/learn_elixir_from_documentation
```

Then go to the project directory and install dependencies:

```bash
cd learn_elixir_from_documentation
mix deps.get
```

## Packages

This repository uses these packages:

- [credo](https://github.com/rrrene/credo): A static analysis tool that helps write better Elixir
code by pointing out common mistakes and inconsistencies. It’s a great tool for beginners who want
to learn to code well in Elixir.
- [styler](https://github.com/adobe/elixir-styler): A formatting tool for Elixir. Styler combines
the functions of `mix format` and `mix credo` to fix code style automatically. I use both Credo
and Styler to see how they work together, though for beginners, I recommend starting with Credo.
- [dialyxir](https://github.com/jeremyjh/dialyxir): Since each function has `@spec`, I use Dialyxir
to check type specifications with Dialyzer. Dialyzer finds issues like type errors, unreachable
code, and unnecessary tests. Dialyxir makes Dialyzer easier to use in Elixir projects.

## Todo List

- [x] [Basic Types](./lib/basic_types.ex)
- [x] [Lists and Tuples](./lib/list_and_tuples.ex)
- [x] [Pattern Matching](./lib/pattern_matching.ex)
- [x] [`case`, `cond`, and `if`](./lib/case_cond_if.ex)
- [x] [Anonymous Functions](./lib/anonymous_function.ex)
- [x] [Binaries, Strings, and Charlists](./lib/binaries_strings_and_charlists.ex)
- [x] [Keyword Lists and Maps](./lib/keyword_lists_and_maps.ex)
- [x] [Modules and Functions](./lib/modules_and_functions.ex)
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
