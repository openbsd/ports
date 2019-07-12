# $OpenBSD: Makefile,v 1.9 2019/07/12 20:46:12 sthen Exp $

COMMENT =		IBM's corporate type family

CATEGORIES =		fonts
V =			2.0.0
PKGNAME =		ibm-plex-$V

# SIL OFL 1.1
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://github.com/IBM/plex/releases/download/v$V/

DISTFILES =		OpenType.zip \
			TrueType.zip

DIST_SUBDIR =		ibm-plex-$V

HOMEPAGE =		https://www.ibm.com/plex/

MODULES =		font

NO_BUILD =		Yes
NO_TEST =		Yes

FONTDIR =		${PREFIX}/share/fonts/ibm-plex
DOCDIR =		${PREFIX}/share/doc/ibm-plex

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/OpenType/*/*.otf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/TrueType/*/*.ttf ${FONTDIR}

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/OpenType/IBM-Plex-Sans/license.txt ${DOCDIR}

.include <bsd.port.mk>
