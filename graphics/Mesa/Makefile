# $OpenBSD: Makefile,v 1.3 1999/11/10 18:30:21 brad Exp $
# $FreeBSD: Makefile,v 1.30 1998/11/11 05:37:18 asami Exp $

PKGNAME=	Mesa-3.0
CATEGORIES=	graphics
MASTER_SITES=	ftp://iris.ssec.wisc.edu/pub/Mesa/ \
		ftp://ftp.enst.fr/distfiles/ \
		ftp://ftp.fu-berlin.de/pub/unix/X11/graphics/Mesa/ \
		ftp://ftp.mesa3d.org/mesa/
DISTFILES=	MesaLib-3.0.tar.gz MesaDemos-3.0.tar.gz

NEEDED_VERSION=	1.64

HOMEPAGE=	http://www.mesa3d.org/

MAINTAINER=	brad@openbsd.org

USE_X11=	yes

WRKSRC=	${WRKDIR}/Mesa-3.0

SHLIB_VERSION=	3.0
GLUT_VERSION=	3.7

configure:
	@cp ${FILESDIR}/mklib.openbsd-static ${WRKSRC}

do-install:
	@mkdir -p ${PREFIX}/include/GL
	${INSTALL_DATA} ${WRKSRC}/lib/libMesaGL.a ${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/lib/libMesaGLU.a ${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/lib/libglut.a ${PREFIX}/lib
	@ln -sf libMesaGL.a ${PREFIX}/lib/libGL.a
	@ln -sf libMesaGLU.a ${PREFIX}/lib/libGLU.a
	${INSTALL_DATA} ${WRKSRC}/include/GL/* ${PREFIX}/include/GL
	@if [ -f ${WRKSRC}/lib/libMesaGL.so.${SHLIB_VERSION} ]; then \
	 ${INSTALL_DATA} ${WRKSRC}/lib/libMesaGL.so.${SHLIB_VERSION} ${PREFIX}/lib; \
	 ln -sf libMesaGL.so.${SHLIB_VERSION} ${PREFIX}/lib/libGL.so.${SHLIB_VERSION}; \
	fi
	@if [ -f ${WRKSRC}/lib/libMesaGLU.so.${SHLIB_VERSION} ]; then \
	 ${INSTALL_DATA} ${WRKSRC}/lib/libMesaGLU.so.${SHLIB_VERSION} ${PREFIX}/lib; \
	 ln -sf libMesaGLU.so.${SHLIB_VERSION} ${PREFIX}/lib/libGLU.so.${SHLIB_VERSION}; \
	fi
	@if [ -f ${WRKSRC}/lib/libglut.so.${GLUT_VERSION} ]; then \
	 ${INSTALL_DATA} ${WRKSRC}/lib/libglut.so.${GLUT_VERSION} ${PREFIX}/lib; \
	fi
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS)
ALL_TARGET=     openbsd-static
.else
ALL_TARGET=	openbsd
.endif
