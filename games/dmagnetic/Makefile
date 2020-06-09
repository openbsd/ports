# $OpenBSD: Makefile,v 1.11 2020/06/09 12:40:17 sthen Exp $

V =		0.23
COMMENT =	interpreter for Magnetic Scrolls games
DISTNAME =	dMagnetic_${V}
PKGNAME =	dmagnetic-${V}
EXTRACT_SUFX =	.tar.bz2
CATEGORIES =	games

HOMEPAGE =	https://www.dettus.net/dMagnetic/
MAINTAINER =	Thomas Dettbarn <dettus@dettus.net>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c

MASTER_SITES =	https://www.dettus.net/dMagnetic/

MAKE_FLAGS =	CC="${CC}" CFLAGS="${CFLAGS}"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/dMagnetic ${PREFIX}/bin/dMagnetic
	${INSTALL_MAN} ${WRKSRC}/dMagnetic.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/dMagneticini.5 ${PREFIX}/man/man5
	${INSTALL_DATA_DIR} ${PREFIX}/share/dMagnetic
	${INSTALL_DATA} ${WRKSRC}/dMagnetic.ini ${PREFIX}/share/dMagnetic
	${INSTALL_DATA} ${WRKSRC}/LICENSE.txt ${PREFIX}/share/dMagnetic
	${INSTALL_DATA} ${WRKSRC}/README.txt ${PREFIX}/share/dMagnetic

do-test:
	cd ${WRKSRC}/testcode;  if [ `echo Hello | ../dMagnetic -ini ../dMagnetic.ini \
		-mag minitest.mag -gfx minitest.gfx \
		-vmode none -vecho -vcols 300 -vrows 300 | \
		sha256 -b` == cK9FNnpq0bYSzqvTb+8wnUJYq6wnUoGlVBNCzPCnZc0= -a \
		`echo Hello | ../dMagnetic -ini ../dMagnetic.ini \
		-mag minitest.mag -gfx minitest.gfx \
		-vmode monochrome -vecho -vcols 300 -vrows 300 | \
		sha256 -b` == seDxuft63ieWCyOgu/GV1rV3E7yROXeS+rC9cA6IL7Y= -a \
		`echo Hello | ../dMagnetic -ini ../dMagnetic.ini \
		-mag minitest.mag -gfx minitest.gfx \
		-vmode monochrome_inv -vecho -vcols 300 -vrows 300 | \
		sha256 -b` == MfppImDWbkyITNN49NVWlI+iysmToiJzW1D+d9XkL3Q= -a \
		`echo Hello | ../dMagnetic -ini ../dMagnetic.ini \
		-mag minitest.mag -gfx minitest.gfx \
		-vmode low_ansi -vecho -vcols 300 -vrows 300 | \
		sha256 -b` == AwX+FxRDEMR1mi/CP3jn85dWA9UltkoezHn7hmKFI8k= -a \
		`echo Hello | ../dMagnetic -ini ../dMagnetic.ini \
		-mag minitest.mag -gfx minitest.gfx \
		-vmode low_ansi2 -vecho -vcols 300 -vrows 300 | \
		sha256 -b` == 70oe3RMTJG3/R6nUTigntHXEg+/ORW0cNHW5sZ+P2Lc= -a \
		`echo Hello | ../dMagnetic -ini ../dMagnetic.ini \
		-mag minitest.mag -gfx minitest.gfx \
		-vmode high_ansi -vecho -vcols 300 -vrows 300 | \
		sha256 -b` == kaRDtG5AyqOo8ikUStr+giD0RfRSyuZjLg99zZXgO58= -a \
		`echo Hello | ../dMagnetic -ini ../dMagnetic.ini \
		-mag minitest.mag -gfx minitest.gfx \
		-vmode sixel -vecho -vcols 300 -vrows 300 | \
		sha256 -b` == ad6zWhMj07AY0kn7DrkbM4cuRU2YbHU4kSq6PJHVWjI= \
		]; \
		then echo ok; else echo expected output not seen; exit 1; fi

.include <bsd.port.mk>
