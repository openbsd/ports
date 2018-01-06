# $OpenBSD: Makefile,v 1.1.1.1 2018/01/06 04:43:34 bentley Exp $

COMMENT =		IBM's corporate type family

CATEGORIES =		fonts
V =			0.5.3
DISTNAME =		ibm-plex-$V

GH_ACCOUNT =		IBM
GH_PROJECT =		type
GH_TAGNAME =		v$V

# SIL OFL 1.1
PERMIT_PACKAGE_CDROM =	Yes

HOMEPAGE =		https://ibm.github.io/type/

MODULES =		font

NO_BUILD =		Yes
NO_TEST =		Yes

FONTDIR =		${PREFIX}/share/fonts/ibm-plex
DOCDIR =		${PREFIX}/share/doc/ibm-plex

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/fonts/*/*/*/*.otf ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/fonts/*/*/*/*.ttf ${FONTDIR}

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/LICENSE.md ${DOCDIR}

.include <bsd.port.mk>
