# $OpenBSD: Makefile,v 1.12 2020/07/11 23:41:07 sthen Exp $

V =		0.24
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
	cd ${WRKSRC} && ${MAKE} SHA256_CMD=sha256 do-test

.include <bsd.port.mk>
