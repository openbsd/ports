COMMENT=	graphical file comparator and merge tool

GH_ACCOUNT=	blais
GH_PROJECT=	xxdiff
GH_COMMIT=	f0d6fd44b3f31a852cbd765596b6db05a8e78276

DISTNAME=	xxdiff-20220318
REVISION=	4

CATEGORIES=	textproc x11

HOMEPAGE=	https://furius.ca/xxdiff/

# GPLv2+
PERMIT_PACKAGE=	Yes

CXXFLAGS_base-clang =	-std=c++14

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Widgets c m

WRKSRC=		${WRKDIST}/src

MODULES=	devel/qmake \
		lang/python \
		x11/qt5

BUILD_DEPENDS=	devel/bison

USE_GMAKE=	Yes
MAKE_FLAGS=	MAKEDIR=${WRKDIST}
MODPY_ADJ_FILES= ../bin/termdiff
MODPY_PYBUILD=	setuptools
NO_TEST=	Yes

post-configure:
	${MAKE_PROGRAM} -C ${WRKSRC} -f Makefile.bootstrap QMAKE=${MODQT5_QMAKE}
	${MAKE_PROGRAM} -C ${WRKSRC} resParser_lex.h doc.h version.h

do-install:
	cd ${WRKSRC}/bin; \
	${INSTALL_PROGRAM} xxdiff ${PREFIX}/bin/xxdiff; \
	${INSTALL_MAN} ${WRKSRC}/xxdiff.1 ${PREFIX}/man/man1/xxdiff.1

	cd ${WRKDIST}; \
	${SETENV} ${MAKE_ENV} ${MODPY_BIN} ./${MODPY_SETUP} \
	    ${MODPY_DISTUTILS_BUILD} ${MODPY_DISTUTILS_BUILDARGS} \
	    ${MODPY_DISTUTILS_INSTALL} ${MODPY_DISTUTILS_INSTALLARGS}; \
	# previous versions of this port installed the termdiff script;
	# it doesn't support Python 3 yet (and other Python parts of xxdiff
	# don't support Python 2 any more), also the previous version was
	# quite buggy, so skip for now.
	#${INSTALL_SCRIPT} bin/termdiff ${PREFIX}/bin

.include <bsd.port.mk>
