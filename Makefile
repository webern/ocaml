# Frontend to dune.

.PHONY: default build install uninstall test clean

default: build

build:
	dune build

test:
	dune runtest -f

install:
	dune install

uninstall:
	dune uninstall

clean:
	git add --all
	git commit -m"save" || true
	dune clean
	git clean -dfXq
	git clean -fX
	git clean -fd
	rm -rf node_modules

save:
	git add --all
	git commit -m"save" || true