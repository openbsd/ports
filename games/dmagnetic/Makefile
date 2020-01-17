# $OpenBSD: Makefile,v 1.9 2020/01/17 22:19:46 sthen Exp $

V =		0.20
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
	cd ${WRKSRC}/testcode; if [ `echo Hello | ../dMagnetic \
	    -mag minitest.mag -gfx minitest.gfx \
	    -vmode low_ansi -vecho -vcols 300 -vrows 300 | \
	    sha256 -b` == 6DhbUg1shZBuSXIm3PNK1/fMfRQ5RIHCuLPik+IkeQM= ]; \
	    then echo ok; else echo expected output not seen; exit 1; fi

.include <bsd.port.mk>
