COMMENT=	graphical file comparator and merge tool

PKGNAME=	xxdiff-4.0.1.20170623
DISTNAME=	5e5f885dfc43559549a81c59e9e8c9525306356a

CATEGORIES=	textproc x11

HOMEPAGE=	http://furius.ca/xxdiff/

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Widgets c m

MASTER_SITES=	https://bitbucket.org/blais/xxdiff/get/

MODULES=	devel/qmake \
		lang/python \
		x11/qt5
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

BUILD_DEPENDS=	devel/bison

MAKE_FLAGS=	MAKEDIR=${WRKDIST}

SEPARATE_BUILD=	No

MODPY_ADJ_FILES= ../bin/termdiff

NO_TEST=	Yes

WRKDIST=	${WRKDIR}/blais-xxdiff-${DISTNAME:C/([0-9a-f]{12}).*/\1/}/src

post-extract:
	@rm ${WRKDIST}/getopt.h
	@rm ${WRKDIST}/getopt.c
	@rm ${WRKDIST}/getopt1.c

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
