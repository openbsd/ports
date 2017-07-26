# $OpenBSD: Makefile,v 1.43 2017/07/26 22:45:31 sthen Exp $

COMMENT=	graphical file comparator and merge tool

DISTNAME=	xxdiff-4.0.1
CATEGORIES=	textproc x11
REVISION=	0

HOMEPAGE=	http://furius.ca/xxdiff/

# GPL
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += ICE QtGui SM X11 Xext Xi Xinerama Xrender c fontconfig
WANTLIB += freetype m pthread ${COMPILER_LIBCXX}

MASTER_SITES=   ${MASTER_SITE_SOURCEFORGE:=xxdiff/}
EXTRACT_SUFX=	.tar.bz2

MODULES=	devel/qmake \
		lang/python \
		x11/qt4
BUILD_DEPENDS=	devel/bison

SEPARATE_BUILD=	No

MODPY_ADJ_FILES= ../bin/termdiff

NO_TEST=	Yes

WRKDIST=	${WRKDIR}/${DISTNAME}/src

post-extract:
	@rm ${WRKSRC}/getopt.h
	@rm ${WRKSRC}/getopt.c
	@rm ${WRKSRC}/getopt1.c

post-configure:
	cat ${WRKSRC}/Makefile.extra >>${WRKBUILD}/Makefile

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
