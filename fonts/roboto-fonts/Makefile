# $OpenBSD: Makefile,v 1.2 2013/03/11 11:06:05 espie Exp $

COMMENT =	sans-serif typeface family of Android OS

DISTNAME =	Roboto_Hinted_${V}
PKGNAME =	roboto-fonts-${V}
V =		20120823

CATEGORIES =	fonts x11

HOMEPAGE =	https://developer.android.com/design/style/typography.html

MAINTAINER =	Juan Francisco Cantero Hurtado <iam@juanfra.info>

# Apache 2 License
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =	https://developer.android.com/downloads/design/
EXTRACT_SUFX =	.zip

NO_BUILD =	Yes
NO_TEST =	Yes

PKG_ARCH =	*

FONTDIR =	${PREFIX}/lib/X11/fonts/roboto
DOCDIR =	${PREFIX}/share/doc/roboto-fonts

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIR}/*.ttf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIR}/*.pdf ${DOCDIR}

.include <bsd.port.mk>
