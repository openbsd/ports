# $OpenBSD: Makefile,v 1.5 2000/01/21 15:06:14 kevlo Exp $

DISTNAME=	AfterStep-1.6.10
PKGNAME=	afterstep-1.6.10
CATEGORIES=     x11
MASTER_SITES=   ftp://ftp.afterstep.org/pub/stable/

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
