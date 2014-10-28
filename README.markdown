# ocaml-utop-emacs-example

This is a tiny example OCaml project I wrote to go along with a
blog-post describing how to configure utop so it knows about your
[opam](http://opam.ocamlpro.com/) packages and binaries for a given
OCaml project.

Read the [blog post](http://mads379.github.io/ocaml/2014/01/05/using-utop-in-emacs.html) for more information.

To get started run

    make compile

If everything worked you should have a runnable executable
`_build/euler01`. This is of course not the interesting part; got read
the blog post for more information.

To play around with the code in the terminal (not Emacs) run `utop` and try the following:

    #load_rec "impl.cmo";;
    Impl.compute ();;
