# $OpenBSD: Makefile,v 1.1.1.1 2012/10/12 16:06:03 rpe Exp $

COMMENT =	sans-serif typeface family of Android OS

DISTNAME =	Roboto_Hinted_${V}
PKGNAME =	roboto-fonts-${V}
V =		20120823

CATEGORIES =	fonts x11

HOMEPAGE =	https://developer.android.com/design/style/typography.html

MAINTAINER =	Juan Francisco Cantero Hurtado <iam@juanfra.info>

# Apache 2 License
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =	https://developer.android.com/downloads/design/
EXTRACT_SUFX =	.zip

NO_BUILD =	Yes
NO_REGRESS =	Yes

PKG_ARCH =	*

FONTDIR =	${PREFIX}/lib/X11/fonts/roboto
DOCDIR =	${PREFIX}/share/doc/roboto-fonts

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIR}/*.ttf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIR}/*.pdf ${DOCDIR}

.include <bsd.port.mk>
