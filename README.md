# README

This is a little side project I wrote to learn how to Rust (and how to write code using almost exclusively NeoVim as my IDE of choice). It's a decently fast clone of the `echo` shell builtin (that's mainly becuase it doesn't do a whole lot right now).

## USAGE

`rustecho` has 3 flags at the moment.

-n, --newline: Toggle the newline at the end of output. Default is true (add a newline at the very end), passing this flag changes that to false.

-c, --count: Specifies how many times input should be echoed. Default is once. Note that this argument is optional. If it's not specified, `rustecho` will assume you wanted behavior similar to the real `echo` and will only print the input once.

-i, --input: The thing you want to be printed. For now, it must be specified surrounded by quotes.
