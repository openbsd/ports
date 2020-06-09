# $OpenBSD: Makefile,v 1.8 2020/06/09 04:39:53 bentley Exp $

COMMENT =	sans-serif typeface family of Android OS

FIX_EXTRACT_PERMISSIONS =	Yes

V =		2.138
EPOCH =		0
DISTNAME =	roboto-unhinted
PKGNAME =	roboto-fonts-${V}

CATEGORIES =	fonts x11

HOMEPAGE =	https://developer.android.com/design/style/typography.html

# Apache 2 License
PERMIT_PACKAGE =		Yes

MASTER_SITES =	https://github.com/googlefonts/roboto/releases/download/v$V/
EXTRACT_SUFX =	.zip

DIST_SUBDIR =	roboto-$V

NO_BUILD =	Yes
NO_TEST =	Yes

PKG_ARCH =	*
WRKDIST =	${WRKDIR}

FONTDIR =	${PREFIX}/share/fonts/roboto
DOCDIR =	${PREFIX}/share/doc/roboto-fonts

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/*.ttf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/LICENSE ${DOCDIR}

.include <bsd.port.mk>
