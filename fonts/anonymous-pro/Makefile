# $OpenBSD: Makefile,v 1.4 2015/03/31 09:45:09 ajacoutot Exp $

COMMENT = 	fixed width sans font designed especially for coders
PKG_ARCH =	*
VERSION =	1.002
PKGNAME =	anonymous-pro-${VERSION}
DISTNAME =	AnonymousPro-${VERSION}
REVISION =	2
EXTRACT_SUFX =	.zip
CATEGORIES =	fonts x11

MASTER_SITES =	http://www.ms-studio.com/FontSales/
HOMEPAGE =	http://www.ms-studio.com/FontSales/anonymouspro.html

# OFL http://scripts.sil.org/OFL
PERMIT_PACKAGE_CDROM =		Yes

NO_BUILD =	Yes
NO_TEST =	Yes
FONTSDIR =	${PREFIX}/share/fonts/anonymous-pro

WRKDIST =	${WRKDIR}/${DISTNAME}.001

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/anonymous-pro
	${INSTALL_DATA_DIR} ${FONTSDIR}
	cd ${WRKDIST} ; /bin/pax -rw '-s/ //g' *.ttf ${FONTSDIR}
	${INSTALL_DATA} ${WRKDIST}/*.txt ${PREFIX}/share/doc/anonymous-pro

.include <bsd.port.mk>
