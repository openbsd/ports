# $OpenBSD: Makefile,v 1.1.1.1 2016/03/10 07:17:36 bentley Exp $

PKG_ARCH =		*

V =			5.000
COMMENT =		clear sans serif, Unicode-compliant font
DISTNAME =		Andika-$V
PKGNAME =		andika-$V
CATEGORIES =		fonts

HOMEPAGE =		http://software.sil.org/andika/

MAINTAINER =		George Rosamond <george@nycbug.org>

# SIL OFL 1.1
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://software.sil.org/downloads/andika/
EXTRACT_SUFX =		.zip

NO_BUILD =		Yes
NO_TEST =		Yes

FONTDIR =		${PREFIX}/share/fonts/andika
DOCDIR =		${PREFIX}/share/doc/andika

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/*.ttf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/*.txt ${DOCDIR}

.include <bsd.port.mk>
