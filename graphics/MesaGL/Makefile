# $OpenBSD: Makefile,v 1.7 1999/06/11 13:33:27 brad Exp $
# $FreeBSD: Makefile,v 1.30 1998/11/11 05:37:18 asami Exp $

DISTNAME=       MesaLib-3.0
PKGNAME=	MesaGL-3.0
CATEGORIES=	graphics
MASTER_SITES=	ftp://iris.ssec.wisc.edu/pub/Mesa/ \
		ftp://ftp.enst.fr/distfiles/ \
		ftp://ftp.fu-berlin.de/pub/unix/X11/graphics/Mesa/ \
		ftp://ftp.mesa3d.org/mesa/

DISTFILES=     ${DISTNAME}.tar.gz MesaDemos-3.0.tar.gz

NEEDED_VERSION=	1.64

HOMEPAGE=	http://www.mesa3d.org/
MAINTAINER=	brad@openbsd.org

WRKSRC=		${WRKDIR}/Mesa-3.0
USE_X11= yes

SHLIB_VERSION=	3.0
GLUT_VERSION=	3.7

do-install:
	${INSTALL_DATA} ${WRKSRC}/lib/libMesaGL.a ${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/lib/libMesaGLU.a ${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/lib/libglut.a ${PREFIX}/lib
	${LN} -fs libMesaGL.a ${PREFIX}/lib/libGL.a
	${LN} -fs libMesaGLU.a ${PREFIX}/lib/libGLU.a
	${MKDIR} ${PREFIX}/include/GL
	${INSTALL_DATA} ${WRKSRC}/include/GL/* ${PREFIX}/include/GL
	@if [ -f ${WRKSRC}/lib/libMesaGL.so.${SHLIB_VERSION} ]; then \
	 ${INSTALL_DATA} ${WRKSRC}/lib/libMesaGL.so.${SHLIB_VERSION} ${PREFIX}/lib; \
	 ${LN} -fs libMesaGL.so.${SHLIB_VERSION} ${PREFIX}/lib/libGL.so.${SHLIB_VERSION}; \
	fi
	@if [ -f ${WRKSRC}/lib/libMesaGLU.so.${SHLIB_VERSION} ]; then \
	 ${INSTALL_DATA} ${WRKSRC}/lib/libMesaGLU.so.${SHLIB_VERSION} ${PREFIX}/lib; \
	 ${LN} -fs libMesaGLU.so.${SHLIB_VERSION} ${PREFIX}/lib/libGLU.so.${SHLIB_VERSION}; \
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
