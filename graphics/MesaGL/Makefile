# $OpenBSD: Makefile,v 1.1.1.1 1999/03/07 05:50:47 brad Exp $
# $FreeBSD: Makefile,v 1.30 1998/11/11 05:37:18 asami Exp $

DISTNAME=       MesaLib-3.0
PKGNAME=	MesaGL-3.0
CATEGORIES=	graphics
MASTER_SITES= 	ftp://iris.ssec.wisc.edu/pub/Mesa/ \
		ftp://ftp.fu-berlin.de/pub/unix/X11/graphics/Mesa/
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} MesaDemos-3.0.tar.gz

MAINTAINER=	brad@openbsd.org

WRKSRC=		${WRKDIR}/Mesa-3.0

USE_X11= yes
LIBS=		libMesaGL libMesaGLU

.if (${MACHINE_ARCH} == "i386")
ALL_TARGET=     openbsd-386
.else
ALL_TARGET=     openbsd
.endif

SHLIB_VERSION=	3.0
GLUT_VERSION=	3.7

do-install:
.for file in ${LIBS}
	${INSTALL_DATA} ${WRKSRC}/lib/${file}_pic.a ${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/lib/${file}.so.${SHLIB_VERSION} ${PREFIX}/lib
	${LN} -fs ${file}.so.${SHLIB_VERSION} ${PREFIX}/lib/${file}.so
.endfor
	${INSTALL_DATA} ${WRKSRC}/lib/libglut_pic.a ${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/lib/libglut.so.${GLUT_VERSION} ${PREFIX}/lib
	${LN} -fs libglut.so.${GLUT_VERSION} ${PREFIX}/lib/libglut.so
.for file in GL GLU
	@${LN} -fs libMesa${file}_pic.a ${PREFIX}/lib/lib${file}_pic.a
	@${LN} -fs libMesa${file}.so.${SHLIB_VERSION} ${PREFIX}/lib/lib${file}.so.${SHLIB_VERSION}
	@${LN} -fs libMesa${file}.so ${PREFIX}/lib/lib${file}.so
.endfor
	@${MKDIR} ${PREFIX}/include/GL
	${INSTALL_DATA} ${WRKSRC}/include/GL/* ${PREFIX}/include/GL

.include <bsd.port.mk>
