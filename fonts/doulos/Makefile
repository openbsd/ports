# $OpenBSD: Makefile,v 1.1.1.1 2016/03/10 07:21:03 bentley Exp $

PKG_ARCH =		*

V =			5.000
COMMENT =		Unicode-based font for Roman and Cyrillic
DISTNAME =		DoulosSIL-$V
PKGNAME =		doulos-$V
CATEGORIES =		fonts

HOMEPAGE =		http://software.sil.org/doulos/

MAINTAINER =		George Rosamond <george@nycbug.org>

# SIL OFL 1.1
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://software.sil.org/downloads/doulos/

EXTRACT_SUFX =		.zip

NO_BUILD =		Yes
NO_TEST =		Yes

WRKDIST =		${WRKDIR}/${DISTNAME}
FONTDIR =		${PREFIX}/share/fonts/doulos
DOCDIR =		${PREFIX}/share/doc/doulos

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/*.ttf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/*.txt ${DOCDIR}

.include <bsd.port.mk>
