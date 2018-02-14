# $OpenBSD: Makefile,v 1.2 2018/02/14 06:26:30 bentley Exp $

PKG_ARCH =		*

V =			2.200
COMMENT =		New Tai Lue Unicode characters
DISTNAME =		DaiBanna-$V
PKGNAME =		dai-banna-$V
REVISION =		0
CATEGORIES =		fonts

HOMEPAGE =		https://scripts.sil.org/DaiBannaSIL

MAINTAINER =		George Rosamond <george@nycbug.org>

# SIL OFL 1.1
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://mirrors.nycbug.org/pub/distfiles/

EXTRACT_SUFX =		.zip

NO_BUILD =		Yes
NO_TEST =		Yes

WRKDIST =		${WRKDIR}/${PKGNAME}
FONTDIR =		${PREFIX}/share/fonts/dai-banna
DOCDIR =		${PREFIX}/share/doc/dai-banna

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/*.ttf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/*.txt ${DOCDIR}

.include <bsd.port.mk>
