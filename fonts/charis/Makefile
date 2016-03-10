# $OpenBSD: Makefile,v 1.1.1.1 2016/03/10 07:18:23 bentley Exp $

PKG_ARCH =		*

V =			5.000
COMMENT =		readable Unicode font for laser printers
DISTNAME =		CharisSIL-$V
PKGNAME =		charis-$V
CATEGORIES =		fonts

HOMEPAGE =		http://software.sil.org/charis/

MAINTAINER =		George Rosamond <george@nycbug.org>

# SIL OFL 1.1
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://software.sil.org/downloads/charis/
EXTRACT_SUFX =		.zip

NO_BUILD =		Yes
NO_TEST =		Yes

FONTDIR =		${PREFIX}/share/fonts/charis
DOCDIR =		${PREFIX}/share/doc/charis

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/*.ttf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/*.txt ${DOCDIR}

.include <bsd.port.mk>
