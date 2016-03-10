# $OpenBSD: Makefile,v 1.1.1.1 2016/03/10 07:20:10 bentley Exp $

PKG_ARCH =		*

V =			2.200
COMMENT =		Unicode font package for New Tai Lue characters
DISTNAME =		DaiBanna-$V
PKGNAME =		dai-banna-$V
CATEGORIES =		fonts

HOMEPAGE =		https://scripts.sil.org/DaiBannaSIL

MAINTAINER =		George Rosamond <george@nycbug.org>

# SIL OFL 1.1
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://scripts.sil.org/cms/scripts/render_download.php?format=file\&media_id=${DISTNAME}${EXTRACT_SUFX}\&/

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
