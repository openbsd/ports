COMMENT =	check the integrity of PNG files

GH_ACCOUNT =	pnggroup
GH_PROJECT =	pngcheck
GH_TAGNAME =	v4.0.1

CATEGORIES = 	graphics sysutils

HOMEPAGE = 	https://www.libpng.org/pub/png/apps/pngcheck.html

# MIT for pngcheck, GPL for extra utilities
PERMIT_PACKAGE = Yes

WANTLIB = 	c z

NO_TEST = 	Yes

MAKE_FILE = 	Makefile

# easy enough to use their Makefile for building
MAKE_FLAGS = 	ZLIB=-lz ZINC=  CFLAGS="${CFLAGS}" CC=${CC} LD=${CC}

# but it has no install target
do-install:
	cd ${WRKDIST}; \
	for i in pngcheck; \
	do \
		${INSTALL_PROGRAM} $$i ${PREFIX}/bin; \
		${INSTALL_MAN} $$i.1 ${PREFIX}/man/man1; \
	done
.include <bsd.port.mk>

