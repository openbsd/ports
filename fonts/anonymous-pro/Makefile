# $OpenBSD: Makefile,v 1.7 2019/07/12 20:46:10 sthen Exp $

COMMENT = 	fixed width sans font designed especially for coders
PKG_ARCH =	*
VERSION =	1.002
PKGNAME =	anonymous-pro-${VERSION}
DISTNAME =	AnonymousPro-${VERSION}
REVISION =	3
EXTRACT_SUFX =	.zip
CATEGORIES =	fonts x11

MASTER_SITES =	http://www.marksimonson.com/assets/content/fonts/
HOMEPAGE =	http://www.marksimonson.com/fonts/view/anonymous-pro

# SIL OFL 1.1
PERMIT_PACKAGE =		Yes

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
