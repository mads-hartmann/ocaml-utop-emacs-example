PACKAGES ?= batteries

compile:
	rm -rf _build
	mkdir _build
	ocamlfind ocamlc -package "$(PACKAGES)" -c -o _build/impl src/impl.ml
	ocamlfind ocamlc -I _build/ -package "$(PACKAGES)" -linkpkg -o _build/euler01 _build/impl.cmo src/euler01.ml

toplevel.init:
	rm -f "$@"
	touch "$@"
	echo "#use \"topfind\";;" >> "$@"
	for p in $(PACKAGES); do echo "#require \"$$p\";;" >> "$@" ; done

utop: toplevel.init compile
utop:
	utop $(addprefix -I ,_build $(wildcard _build/*)) -init "toplevel.init"
