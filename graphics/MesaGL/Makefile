# $OpenBSD: Makefile,v 1.2 1999/03/09 02:09:08 brad Exp $
# $FreeBSD: Makefile,v 1.30 1998/11/11 05:37:18 asami Exp $

DISTNAME=       MesaLib-3.0
PKGNAME=	MesaGL-3.0
CATEGORIES=	graphics

NEEDED_VERSION=	1.64

MASTER_SITES= 	ftp://ftp.mesa3d.org/mesa/ \
		ftp://iris.ssec.wisc.edu/pub/Mesa/ \
		ftp://ftp.fu-berlin.de/pub/unix/X11/graphics/Mesa/
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} MesaDemos-3.0.tar.gz

MAINTAINER=	brad@openbsd.org

WRKSRC=		${WRKDIR}/Mesa-3.0

USE_X11= yes

SHLIB_VERSION=	3.0
GLUT_VERSION=	3.7

do-install:
	${INSTALL_DATA} ${WRKSRC}/lib/libMesaGL.a ${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/lib/libMesaGLU.a ${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/lib/libglut.a ${PREFIX}/lib
	@${LN} -fs libMesaGL.a ${PREFIX}/lib/libGL.a
	@${LN} -fs libMesaGLU.a ${PREFIX}/lib/libGLU.a
	${INSTALL_DATA} ${WRKSRC}/lib/libMesaGL.so.${SHLIB_VERSION} ${PREFIX}/lib
	@${LN} -fs libMesaGL.so.${SHLIB_VERSION} ${PREFIX}/lib/libMesaGL.so
	@${LN} -fs libMesaGL.so.${SHLIB_VERSION} ${PREFIX}/lib/libGL.so.${SHLIB_VERSION}
	@${LN} -fs libMesaGL.so ${PREFIX}/lib/libGL.so
	${INSTALL_DATA} ${WRKSRC}/lib/libMesaGLU.so.${SHLIB_VERSION} ${PREFIX}/lib
	@${LN} -fs libMesaGLU.so.${SHLIB_VERSION} ${PREFIX}/lib/libMesaGLU.so
	@${LN} -fs libMesaGLU.so.${SHLIB_VERSION} ${PREFIX}/lib/libGLU.so.${SHLIB_VERSION}
	@${LN} -fs libMesaGLU.so ${PREFIX}/lib/libGLU.so
	${INSTALL_DATA} ${WRKSRC}/lib/libglut.so.${GLUT_VERSION} ${PREFIX}/lib
	@${LN} -fs libglut.so.${GLUT_VERSION} ${PREFIX}/lib/libglut.so
	@${MKDIR} ${PREFIX}/include/GL
	${INSTALL_DATA} ${WRKSRC}/include/GL/* ${PREFIX}/include/GL

.include <bsd.port.mk>

.if !defined(NO_SHARED_LIBS)
ALL_TARGET=     openbsd
.else
BROKEN=		"Currently does not build correctly"
.endif
