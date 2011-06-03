# $OpenBSD: Makefile,v 1.3 2011/06/03 16:04:27 shadchin Exp $

COMMENT = 	fixed width sans font designed especially for coders
PKG_ARCH =	*
VERSION =	1.002
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

WRKDIST =	${WRKDIR}/${DISTNAME}.001

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/anonymous-pro
	${INSTALL_DATA_DIR} ${FONTSDIR}
	cd ${WRKDIST} ; /bin/pax -rw '-s/ //g' *.ttf ${FONTSDIR}
	${INSTALL_DATA} ${WRKDIST}/*.txt ${PREFIX}/share/anonymous-pro

.include <bsd.port.mk>
