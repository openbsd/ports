# $OpenBSD: Makefile,v 1.15 2016/08/27 06:01:24 bentley Exp $

# no libGL (toolchain issue)
NOT_FOR_ARCHS=	m88k

COMMENT=	GL Extension Wrangler library

DISTNAME=	glew-1.12.0
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=glew/}
EXTRACT_SUFX=	.tgz
REVISION=	0

SHARED_LIBS=	GLEW	7.0 \
		GLEWmx	3.0

HOMEPAGE=	http://glew.sourceforge.net/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL GLU X11 Xext Xi Xmu c m pthread

MAKE_ENV=	LIBGLEW_VERSION=${LIBGLEW_VERSION} \
		LIBGLEWMX_VERSION=${LIBGLEWmx_VERSION} \
		GLEW_DEST=${PREFIX}
MAKE_FLAGS=	LD=${CC} LN= STRIP= GLEW_PREFIX=${PREFIX}

USE_GMAKE=	Yes

NO_TEST=	Yes

post-extract:
	@cp ${FILESDIR}/Makefile.openbsd ${WRKSRC}/config

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/GL
	${INSTALL_DATA_DIR} ${PREFIX}/lib/pkgconfig
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/glew
	${INSTALL_PROGRAM} ${WRKSRC}/bin/glewinfo ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/bin/visualinfo ${PREFIX}/bin
	if [ -f ${WRKSRC}/lib/libGLEW.so.* ]; then \
	    ${INSTALL_DATA} ${WRKSRC}/lib/libGLEW.so.* ${PREFIX}/lib; \
	    ${INSTALL_DATA} ${WRKSRC}/lib/libGLEWmx.so.* ${PREFIX}/lib; \
	fi
	${INSTALL_DATA} ${WRKSRC}/lib/libGLEW.a ${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/lib/libGLEWmx.a ${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/include/GL/*.h ${PREFIX}/include/GL
	${INSTALL_DATA} ${WRKSRC}/glew.pc ${PREFIX}/lib/pkgconfig
	${INSTALL_DATA} ${WRKSRC}/glewmx.pc ${PREFIX}/lib/pkgconfig
.for i in css html jpg png
	${INSTALL_DATA} ${WRKSRC}/doc/*.${i} ${PREFIX}/share/doc/glew
.endfor

.include <bsd.port.mk>
