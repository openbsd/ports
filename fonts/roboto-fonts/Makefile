# $OpenBSD: Makefile,v 1.7 2019/07/12 20:46:13 sthen Exp $

COMMENT =	sans-serif typeface family of Android OS

# 2013-10-31 Version 1.2 (the date in the specimen filename in the website)
V =		1.2
EPOCH =		0
REVISION =	2
DISTNAME =	roboto-${V}
PKGNAME =	roboto-fonts-${V}

CATEGORIES =	fonts x11

HOMEPAGE =	https://developer.android.com/design/style/typography.html

# Apache 2 License
PERMIT_PACKAGE =		Yes

MASTER_SITES =	https://developer.android.com/downloads/design/
EXTRACT_SUFX =	.zip

NO_BUILD =	Yes
NO_TEST =	Yes

PKG_ARCH =	*
WRKDIST =	${WRKDIR}/Roboto_v${V}

FONTDIR =	${PREFIX}/share/fonts/roboto
DOCDIR =	${PREFIX}/share/doc/roboto-fonts

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/*/*.ttf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/*.pdf ${WRKDIST}/Roboto/*.txt ${DOCDIR}

.include <bsd.port.mk>
