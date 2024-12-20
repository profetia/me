root := justfile_directory()

export TYPST_ROOT := root

[private]
default:
	@just --list --unsorted

cv:
	typst compile src/cv.typ target/cv.pdf
