# Makefile
PHONY: verify srcinfo test-all clean

verify:
	find . -name PKGBUILD -execdir bash -c 'updpkgsums && makepkg --verifysource --nobuild' \; || (echo "Verification Failed"; exit 1)

srcinfo:
	find . -name PKGBUILD -execdir makepkg --printsrcinfo > .SRCINFO \;

test-all: verify srcinfo
	@echo "All tests passed"

clean:
	rm -f .SRCINFO *.pkg.tar.*
