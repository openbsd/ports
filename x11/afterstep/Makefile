# $OpenBSD: Makefile,v 1.14 2000/10/22 15:43:42 espie Exp $

DISTNAME=	AfterStep-1.8.0
PKGNAME=	afterstep-1.8.0
CATEGORIES=     x11
NEED_VERSION=	1.305
MASTER_SITES=   ftp://ftp.afterstep.org/stable/

HOMEPAGE=	http://www.afterstep.org/

LIB_DEPENDS=	png.1::graphics/png \
		jpeg.62::graphics/jpeg

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--prefix"=${X11BASE}" \
		--disable-save-windows \
		--enable-different-looknfeels

INSTALL_TARGET=	install install.man

.include <bsd.port.mk>
