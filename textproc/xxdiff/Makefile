# $OpenBSD: Makefile,v 1.36 2015/11/15 11:55:59 jca Exp $

COMMENT=	graphical file comparator and merge tool

DISTNAME=	xxdiff-4.0
REVISION=	0
CATEGORIES=	textproc x11

HOMEPAGE=	http://furius.ca/xxdiff/

# GPL
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += ICE QtGui SM X11 Xext Xi Xinerama Xrender c fontconfig
WANTLIB += freetype m pthread stdc++

MASTER_SITES=   ${MASTER_SITE_SOURCEFORGE:=xxdiff/}
EXTRACT_SUFX=	.tar.bz2

MODULES=	lang/python \
		x11/qt4
BUILD_DEPENDS=	devel/bison \
		devel/flex

USE_GMAKE=	Yes
# Skip build step from python.port.mk
CONFIGURE_STYLE= none

MODPY_ADJ_FILES= ../bin/termdiff

NO_TEST=	Yes

WRKDIST=	${WRKDIR}/${DISTNAME}/src

post-extract:
	@rm ${WRKSRC}/getopt.h
	@rm ${WRKSRC}/getopt.c
	@rm ${WRKSRC}/getopt1.c

do-configure:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
	    -f Makefile.bootstrap QMAKE="${LOCALBASE}/bin/qmake4"
	cd ${WRKDIR}/bin && ln -s ${LOCALBASE}/bin/gflex flex

do-install:
	cd ${WRKSRC}/../bin; \
	${INSTALL_PROGRAM} xxdiff ${PREFIX}/bin/xxdiff; \
	${INSTALL_MAN} ${WRKSRC}/xxdiff.1 ${PREFIX}/man/man1/xxdiff.1; \
	cd .. ; \
	${SETENV} ${MAKE_ENV} ${MODPY_BIN} ./${MODPY_SETUP} \
	    ${MODPY_DISTUTILS_BUILD} ${MODPY_DISTUTILS_BUILDARGS} \
	    ${MODPY_DISTUTILS_INSTALL} ${MODPY_DISTUTILS_INSTALLARGS}; \
	${INSTALL_SCRIPT} bin/termdiff ${PREFIX}/bin

.include <bsd.port.mk>
