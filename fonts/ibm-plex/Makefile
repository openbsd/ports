# $OpenBSD: Makefile,v 1.2 2018/03/30 05:12:03 bentley Exp $

COMMENT =		IBM's corporate type family

CATEGORIES =		fonts
V =			1.0.1
PKGNAME =		ibm-plex-$V

# SIL OFL 1.1
PERMIT_PACKAGE_CDROM =	Yes

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
	tr -d '\r' < ${WRKDIST}/OpenType/LICENSE.txt > ${WRKDIST}/LICENSE.txt

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/LICENSE.txt ${DOCDIR}

.include <bsd.port.mk>
