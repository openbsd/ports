# $OpenBSD: Makefile,v 1.6 2019/12/27 22:16:53 sthen Exp $

COMMENT =	interpreter for Magnetic Scrolls games

V =		0.19
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

NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/dMagnetic ${PREFIX}/bin/dMagnetic
	${INSTALL_MAN} ${WRKSRC}/dMagnetic.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/dMagneticini.5 ${PREFIX}/man/man5
	${INSTALL_DATA_DIR} ${PREFIX}/share/dMagnetic
	${INSTALL_DATA} ${WRKSRC}/dMagnetic.ini ${PREFIX}/share/dMagnetic
	${INSTALL_DATA} ${WRKSRC}/LICENSE.txt ${PREFIX}/share/dMagnetic
	${INSTALL_DATA} ${WRKSRC}/README.txt ${PREFIX}/share/dMagnetic

.include <bsd.port.mk>
