# $OpenBSD: Makefile,v 1.13 2000/07/26 23:54:36 brad Exp $
# $FreeBSD: Makefile,v 1.30 1998/11/11 05:37:18 asami Exp $

DISTNAME=	Mesa-3.2.1
CATEGORIES=	graphics
NEED_VERSION=	1.310
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= mesa3d
DISTFILES=	MesaLib-3.2.1.tar.gz MesaDemos-3.2.1.tar.gz

HOMEPAGE=	http://www.mesa3d.org/

MAINTAINER=	brad@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

SHLIB_VERSION=	3.2
GLUT_VERSION=	3.7

post-install:
.for lib in GL GLU
	@cd ${PREFIX}/lib && ln -fs lib${lib}.a libMesa${lib}.a && \
	 ln -fs lib${lib}.so.${SHLIB_VERSION} libMesa${lib}.so.${SHLIB_VERSION}
.endfor

.include <bsd.port.mk>
