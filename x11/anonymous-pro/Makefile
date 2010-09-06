# $OpenBSD: Makefile,v 1.1.1.1 2010/09/06 06:23:55 matthieu Exp $

COMMENT = 	fixed width sans font designed especially for coders
PKG_ARCH =	*
VERSION =	1.001
PKGNAME =	anonymous-pro-${VERSION}
DISTNAME =	AnonymousPro-${VERSION}
EXTRACT_SUFX =	.zip
CATEGORIES =	x11

MASTER_SITES =	http://www.ms-studio.com/FontSales/
HOMEPAGE =	http://www.ms-studio.com/FontSales/anonymouspro.html

# OFL http://scripts.sil.org/OFL
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

NO_BUILD =	Yes
NO_REGRESS =	Yes
FONTSDIR =	${PREFIX}/lib/X11/fonts/anonymous-pro

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/anonymous-pro
	${INSTALL_DATA_DIR} ${FONTSDIR}
	${INSTALL_DATA} ${WRKDIST}/*.ttf ${FONTSDIR}
	${INSTALL_DATA} ${WRKDIST}/*.txt ${PREFIX}/share/anonymous-pro

.include <bsd.port.mk>
