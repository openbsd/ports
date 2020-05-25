# $OpenBSD: Makefile,v 1.3 2020/05/25 05:42:00 bentley Exp $

V =		1.0
COMMENT =	Adrian Smith's standard APL fonts
PKGNAME =	apl-fonts-${V}
DISTFILES =	apl385-${V}{apl385}${EXTRACT_SUFX} \
		apl333-${V}{apl333}${EXTRACT_SUFX}
EXTRACT_SUFX =	.zip
CATEGORIES =	fonts x11
REVISION =	0

HOMEPAGE =	https://www.apl385.com/fonts/

# Public Domain
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://www.apl385.com/fonts/

NO_BUILD =	Yes
NO_TEST =	Yes
PKG_ARCH =	*

FONTSDIR =	${PREFIX}/share/fonts/apl

do-install:
	${INSTALL_DATA_DIR} ${FONTSDIR}
	${INSTALL_DATA} ${WRKSRC}/Apl385.ttf ${FONTSDIR}
	${INSTALL_DATA} ${WRKSRC}/APL333.ttf ${FONTSDIR}/Apl333.ttf

.include <bsd.port.mk>
