aur: PKGBUILD
	mkaurball -f

PKGBUILD: PKGBUILD.in
	cp -f PKGBUILD.in PKGBUILD
	sed -i -e '/^md5sums=/d' PKGBUILD
	makepkg -g >> PKGBUILD

clean:
	rm -f PKGBUILD *.tar.gz *.tar.xz *.pyc *.pyo

.PHONY: aur clean