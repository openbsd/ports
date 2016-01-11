# $OpenBSD: Makefile,v 1.5 2016/01/11 14:11:08 ajacoutot Exp $

COMMENT =	faithful, pixel-perfect recreation of the original DOS font

GH_ACCOUNT =	ansilove
GH_PROJECT =	BlockZone
GH_TAGNAME =	1.004
REVISION =	0

CATEGORIES =	fonts

HOMEPAGE =	https://github.com/ansilove/blockzone

MAINTAINER =	Frederic Cambus <fred@statdns.com>

# SIL Open Font License 1.1
PERMIT_PACKAGE_CDROM =	Yes

PKG_ARCH =	*
NO_BUILD =	Yes
NO_TEST =	Yes

FONTDIR =	${PREFIX}/share/fonts/BlockZone
DOCDIR =	${PREFIX}/share/doc/blockzone

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/BlockZone.ttf ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${DOCDIR}

.include <bsd.port.mk>
