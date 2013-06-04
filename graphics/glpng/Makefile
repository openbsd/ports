# $OpenBSD: Makefile,v 1.13 2013/06/04 20:38:24 bcallah Exp $

COMMENT=	load PNG graphics files and bind them to an OpenGL texture

VERSION=	1.45
DISTNAME=	glpng
PKGNAME=	glpng-${VERSION}
REVISION =	4
SHARED_LIBS=	glpng 0.0
CATEGORIES=	graphics

EXTRACT_SUFX=	.zip

HOMEPAGE=	http://www.fifi.org/doc/libglpng-dev/glpng.html

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://devio.us/~bcallah/source/

WANTLIB=	GL png>=5

LIB_DEPENDS=	graphics/png


TEST_IS_INTERACTIVE=	x11

TEST_DEPENDS=	graphics/freeglut

DIST_SUBDIR=	${DISTNAME}-${VERSION}
WRKDIST=	${WRKDIR}
WRKSRC=		${WRKDIST}/src

MAKE_FILE=	${FILESDIR}/Makefile
MAKE_ENV=	SHLIB_MAJOR=${LIBglpng_VERSION:R} \
		SHLIB_MINOR=${LIBglpng_VERSION:E}
FAKE_FLAGS=	LIBDIR=${LOCALBASE}/lib DEBUGLIBS=no
CFLAGS+=	-I${X11BASE}/include -I${LOCALBASE}/include \
			-I${WRKDIR}/include

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/glpng
	${INSTALL_DATA_DIR} ${PREFIX}/include/GL/
	${INSTALL_DATA} ${WRKDIR}/include/GL/glpng.h \
		${PREFIX}/include/GL
	${INSTALL_DATA} ${WRKDIR}/glpng.htm \
		${PREFIX}/share/doc/glpng/glpng.html

do-test:
	cd ${WRKDIR}/Example \
	&& ${CC} ${CFLAGS} -o Test Test.c -lm -lz \
		-L${X11BASE}/lib -lGLU -lXi -lXmu \
		-L${LOCALBASE}/lib -lglut \
		-L${WRKBUILD} -lglpng \
	&& LD_LIBRARY_PATH=${WRKSRC} ./Test

.include <bsd.port.mk>
