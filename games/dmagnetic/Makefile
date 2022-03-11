V =		0.32
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

TEST_ENV =	SHA256_CMD=sha256
TEST_TARGET =	check

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/dMagnetic ${PREFIX}/bin/dMagnetic
	${INSTALL_MAN} ${WRKSRC}/dMagnetic.6 ${PREFIX}/man/man6
	${INSTALL_MAN} ${WRKSRC}/dMagneticini.5 ${PREFIX}/man/man5
	${INSTALL_DATA_DIR} ${PREFIX}/share/dMagnetic
	${INSTALL_DATA} ${WRKSRC}/dMagnetic.ini ${PREFIX}/share/dMagnetic
	${INSTALL_DATA} ${WRKSRC}/LICENSE.txt ${PREFIX}/share/dMagnetic
	${INSTALL_DATA} ${WRKSRC}/README.txt ${PREFIX}/share/dMagnetic

.include <bsd.port.mk>
