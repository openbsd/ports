# $OpenBSD: Makefile,v 1.1.1.1 2016/03/10 07:16:53 bentley Exp $

PKG_ARCH =		*

V =			1.500
COMMENT =		Ethiopic Unicode script
DISTNAME =		AbyssinicaSIL-$V
PKGNAME =		abyssinica-$V
CATEGORIES =		fonts

HOMEPAGE =		http://software.sil.org/abyssinica/

MAINTAINER =		George Rosamond <george@nycbug.org>

# SIL OFL 1.1
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://software.sil.org/downloads/abyssinica/
EXTRACT_SUFX =		.zip

NO_BUILD =		Yes
NO_TEST =		Yes

FONTDIR =		${PREFIX}/share/fonts/abyssinica
DOCDIR =		${PREFIX}/share/doc/abyssinica

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/*.ttf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/*.txt ${DOCDIR}

.include <bsd.port.mk>
