# $OpenBSD: Makefile,v 1.6 2000/02/17 16:11:18 kevlo Exp $

DISTNAME=	AfterStep-1.8.0
PKGNAME=	afterstep-1.8.0
CATEGORIES=     x11
MASTER_SITES=   ftp://ftp.afterstep.org/stable/

MAINTAINER=	don@openbsd.org

LIB_DEPENDS=	png.1:${PORTSDIR}/graphics/png \
		jpeg.62:${PORTSDIR}/graphics/jpeg

INSTALL_TARGET=	install install.man

USE_X11=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--prefix=${X11BASE} \
		--disable-save-windows \
		--enable-different-locknfeels

.include <bsd.port.mk>
