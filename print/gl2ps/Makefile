# $OpenBSD: Makefile,v 1.7 2020/04/11 04:44:37 feinerer Exp $

COMMENT =		OpenGL to PostScript printing library

DISTNAME =		gl2ps-1.4.2

SHARED_LIBS =		gl2ps	0.2 # 1.4

CATEGORIES =		print

HOMEPAGE =		http://www.geuz.org/gl2ps/

MAINTAINER =		Ingo Feinerer <feinerer@logic.at>

# LGPLv2
PERMIT_PACKAGE =	Yes

WANTLIB =		GL GLU Xi Xmu glut m png z

MASTER_SITES =		http://geuz.org/gl2ps/src/

EXTRACT_SUFX =		.tgz

MODULES =		devel/cmake
BUILD_DEPENDS =		print/texlive/base
LIB_DEPENDS =		graphics/freeglut \
			graphics/png

TEST_IS_INTERACTIVE =	x11

TEST_TMP=${WRKDIR}/test_tmp
do-test:
	mkdir -p ${TEST_TMP}
	${CC} -I${LOCALBASE}/include -I${X11BASE}/include \
	      -L${LOCALBASE}/lib -L${X11BASE}/lib -L${WRKBUILD} \
	      -lgl2ps -lglut -lGL -lGLU -lX11 -lm \
	      ${WRKSRC}/gl2psTestSimple.c -o ${TEST_TMP}/gl2psTestSimple
	${CC} -I${LOCALBASE}/include -I${X11BASE}/include \
	      -L${LOCALBASE}/lib -L${X11BASE}/lib -L${WRKBUILD} \
	      -lgl2ps -lglut -lGL -lGLU -lX11 -lm \
	      -DHAVE_LIBPNG -DHAVE_ZLIB -lpng -lz \
	      ${WRKSRC}/gl2psTest.c -o ${TEST_TMP}/gl2psTest
	cd ${TEST_TMP} && LD_LIBRARY_PATH=${WRKBUILD} ${TEST_TMP}/gl2psTestSimple
	cd ${TEST_TMP} && LD_LIBRARY_PATH=${WRKBUILD} ${TEST_TMP}/gl2psTest

.include <bsd.port.mk>
