# $OpenBSD: Makefile,v 1.18 2019/07/12 20:46:59 sthen Exp $

# no libGL (toolchain issue)
NOT_FOR_ARCHS=	m88k

COMMENT=	GL Extension Wrangler library

DISTNAME=	glew-2.0.0
REVISION=	0
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=glew/}
EXTRACT_SUFX=	.tgz

SHARED_LIBS=	GLEW	8.0

HOMEPAGE=	http://glew.sourceforge.net/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += GL GLU X11 Xext Xi Xmu c m

MAKE_ENV=	LIBGLEW_VERSION=${LIBGLEW_VERSION} \
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
	fi
	${INSTALL_DATA} ${WRKSRC}/lib/libGLEW.a ${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/include/GL/*.h ${PREFIX}/include/GL
	${INSTALL_DATA} ${WRKSRC}/glew.pc ${PREFIX}/lib/pkgconfig
.for i in css html jpg png
	${INSTALL_DATA} ${WRKSRC}/doc/*.${i} ${PREFIX}/share/doc/glew
.endfor

.include <bsd.port.mk>
