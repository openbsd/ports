# $OpenBSD: Makefile,v 1.10 2000/06/16 23:06:05 espie Exp $
# $FreeBSD: Makefile,v 1.30 1998/11/11 05:37:18 asami Exp $

PKGNAME=	Mesa-3.0
CATEGORIES=	graphics
NEED_VERSION=	1.218
MASTER_SITES=	ftp://iris.ssec.wisc.edu/pub/Mesa/ \
		ftp://ftp.enst.fr/distfiles/ \
		ftp://ftp.fu-berlin.de/pub/unix/X11/graphics/Mesa/ \
		ftp://ftp.mesa3d.org/mesa/
DISTFILES=	MesaLib-3.0.tar.gz MesaDemos-3.0.tar.gz


HOMEPAGE=	http://www.mesa3d.org/

MAINTAINER=	brad@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=	${WRKDIR}/Mesa-3.0

SHLIB_VERSION=	3.0
GLUT_VERSION=	3.7

post-extract:
	@cp ${FILESDIR}/mklib.openbsd-static ${WRKSRC}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/GL
	${INSTALL_DATA} ${WRKSRC}/lib/libMesaGL.a ${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/lib/libMesaGLU.a ${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/lib/libglut.a ${PREFIX}/lib
	@cd ${PREFIX}/lib; ln -fs libMesaGL.a libGL.a; \
			ln -fs libMesaGLU.a libGLU.a
	${INSTALL_DATA} ${WRKSRC}/include/GL/* ${PREFIX}/include/GL
	@if [ -f ${WRKSRC}/lib/libMesaGL.so.${SHLIB_VERSION} ]; then \
	 ${INSTALL_DATA} ${WRKSRC}/lib/libMesaGL.so.${SHLIB_VERSION} ${PREFIX}/lib; \
	 cd ${PREFIX}/lib; ln -fs libMesaGL.so.${SHLIB_VERSION} libGL.so.${SHLIB_VERSION}; \
	fi
	@if [ -f ${WRKSRC}/lib/libMesaGLU.so.${SHLIB_VERSION} ]; then \
	 ${INSTALL_DATA} ${WRKSRC}/lib/libMesaGLU.so.${SHLIB_VERSION} ${PREFIX}/lib; \
	 cd ${PREFIX}/lib; ln -fs libMesaGLU.so.${SHLIB_VERSION} libGLU.so.${SHLIB_VERSION}; \
	fi
	@if [ -f ${WRKSRC}/lib/libglut.so.${GLUT_VERSION} ]; then \
	 ${INSTALL_DATA} ${WRKSRC}/lib/libglut.so.${GLUT_VERSION} ${PREFIX}/lib; \
	fi

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:U} == YES
ALL_TARGET=     openbsd-static
.else
ALL_TARGET=	openbsd
.endif
