PACKAGES ?= batteries core async cohttp

compile:
	rm -rf _build
	mkdir _build
	ocamlfind ocamlc -g -thread -package "$(PACKAGES)" -c -o _build/impl src/impl.ml
	ocamlfind ocamlc -g -thread -package "$(PACKAGES)" -I _build/ -linkpkg -o _build/euler01 _build/impl.cmo src/euler01.ml
	ocamlfind ocamlc -g -thread -package "$(PACKAGES) cohttp.async" -I _build/ -linkpkg -o _build/server src/server.ml

deps:
	OCAMLPARAM="_,g" opam install $(PACKAGES)
