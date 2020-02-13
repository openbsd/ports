# $OpenBSD: Makefile,v 1.10 2020/02/13 22:08:10 sthen Exp $

V =		0.22
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
		sha256 -b` == DOx7jAlyo+E1/MsBxGDzsEd6xGj5p6yZWZ3TuEsptuI= -a \
		`echo Hello | ../dMagnetic -ini ../dMagnetic.ini \
		-mag minitest.mag -gfx minitest.gfx \
		-vmode monochrome -vecho -vcols 300 -vrows 300 | \
		sha256 -b` == JH9v0Uh6jMvWt2XES85vcqqZiUwmktpiLENUZvM/8AY= -a \
		`echo Hello | ../dMagnetic -ini ../dMagnetic.ini \
		-mag minitest.mag -gfx minitest.gfx \
		-vmode low_ansi -vecho -vcols 300 -vrows 300 | \
		sha256 -b` == 6DhbUg1shZBuSXIm3PNK1/fMfRQ5RIHCuLPik+IkeQM= -a \
		`echo Hello | ../dMagnetic -ini ../dMagnetic.ini \
		-mag minitest.mag -gfx minitest.gfx \
		-vmode high_ansi -vecho -vcols 300 -vrows 300 | \
		sha256 -b` == ShiqpQ8Ey8CSV2g3gMCCzSS89Ak6ZaNUQjaw11Tcj8k= -a \
		`echo Hello | ../dMagnetic -ini ../dMagnetic.ini \
		-mag minitest.mag -gfx minitest.gfx \
		-vmode sixel -vecho -vcols 300 -vrows 300 | \
		sha256 -b` == RLueDmrARhpkn8A9YOJz1OW2YLRDBlKCjlxY3Ef56ro= \
		]; \
		then echo ok; else echo expected output not seen; exit 1; fi

.include <bsd.port.mk>
